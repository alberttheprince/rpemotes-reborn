"use strict";

import { ExecuteNUICallback, PlaySoundFrontend, querySelectorVisible } from "./utils.js";
import { CONFIG } from "./main.js";
import { UsingMouse } from "./main.js";

const SEARCH_BAR = document.querySelector(".search-input");

document.addEventListener("keydown", (e) => {
    const FOCUS_ELEMENT = document.activeElement;
    switch (e.key) {
        case "PageDown":
        case "ArrowDown":
            e.preventDefault();
            navigateDown(FOCUS_ELEMENT, e.shiftKey, 1, true);
            break;
        case "PageUp":
        case "ArrowUp":
            e.preventDefault();
            navigateUp(FOCUS_ELEMENT, e.shiftKey, 1, true);
            break;
        
        case "ArrowLeft":
            e.preventDefault();
            navigateUp(FOCUS_ELEMENT, e.shiftKey);
            break;
        case "ArrowRight":
            e.preventDefault();
            navigateDown(FOCUS_ELEMENT, e.shiftKey);
            break;
        case " ":
            if (document.activeElement !== SEARCH_BAR) e.preventDefault();
            break;
    }
})

// We use keyup to delay the action a bit. This helps us to not open the pause menu when closing the emote menu, for example.
document.addEventListener("keyup", (e) => { 
    const FOCUS_ELEMENT = document.activeElement;
    switch (e.key) {
        case "Backspace":
            if (FOCUS_ELEMENT === document.querySelector(".search-input")) break;
        case "Escape":
            if (!FOCUS_ELEMENT) return ExecuteNUICallback("CLOSE_MENU", {});
            if (FOCUS_ELEMENT.closest(".popover")) return;

            PlaySoundFrontend("BACK");
            if (FOCUS_ELEMENT.closest(".keybinds-menu") || (FOCUS_ELEMENT.closest(".content-container") && !CONFIG.Search) ) return document.querySelector(".sidebar-button-active").querySelector(".btn")?.focus();
            if (FOCUS_ELEMENT.closest(".grid") && SEARCH_BAR.value !== "") return document.querySelector(".btn-clear-search").focus();
            if (FOCUS_ELEMENT.closest(".content-container")) return document.querySelector(".sidebar-button-active").querySelector(".btn")?.focus();
            return ExecuteNUICallback("CLOSE_MENU", {});
            break;
    }
})

document.addEventListener("wheel", (e) => {
    if (!UsingMouse) {
        const JUMPS = e.deltaY / 100; // 1 = down, -1 = up. 2,3,4... means that the scroll is too fast, so we jump ahead.
        const FOCUS_ELEMENT = document.activeElement;
        if (JUMPS > 0) {
            navigateDown(FOCUS_ELEMENT, e.shiftKey, Math.abs(JUMPS));
        } else {
            navigateUp(FOCUS_ELEMENT, e.shiftKey, Math.abs(JUMPS));
        }
    };
});

document.addEventListener("scroll", (e) => e.preventDefault());

document.addEventListener("mouseover", (e) => {
    let TARGET = e.target
    if (TARGET === SEARCH_BAR) return; 
    if (TARGET.nodeName === "BUTTON" || TARGET.nodeName === "INPUT" || TARGET.nodeName === "LABEL") {
        if (TARGET.nodeName === "LABEL") TARGET = document.getElementById(TARGET.htmlFor);
        PlaySoundFrontend("NAV_UP_DOWN")
        TARGET.focus();
    }
})

let _lastFocusedButton;
document.addEventListener("focusin", (e) => {
    const TARGET = e.target
    if (TARGET === _lastFocusedButton) return;
    if (TARGET.nodeName === "BUTTON" || TARGET.nodeName === "INPUT") {
        _lastFocusedButton = TARGET;
    }
})

function _refocusOnLastButton(e) {
    if (e.target.nodeName !== "HTML" && e.target !== document.body) return;
    if (document.activeElement === document.body) _lastFocusedButton?.focus();
}

document.addEventListener("click", _refocusOnLastButton)
document.addEventListener("contextmenu", _refocusOnLastButton)


SEARCH_BAR.addEventListener("focus", (e) => {
    ExecuteNUICallback("SEARCH_BAR_FOCUS", {isFocused: true});
})

SEARCH_BAR.addEventListener("blur", (e) => {
    ExecuteNUICallback("SEARCH_BAR_FOCUS", {isFocused: false});
})


function isElementVisible(element) {
    const display = element && window.getComputedStyle(element).getPropertyValue("display") === "none";
    return !display;
}

function getGridColumns(element) {
    let retval = 1;
    if (element?.classList.contains("menu")) retval = window.getComputedStyle(element).getPropertyValue("grid-template-columns").split(" ").length;
    return retval;
}

function navigateUp(currentButton, jumpAhead = false, jumps = 1, checkColumns = false) {
    if (!currentButton) return;
    const container = currentButton.closest(".btn-list");
    if (!container) return;
    const buttons = Array.from(container.querySelectorAll("button:not(.hidden), input:not(.hidden)")); // CSS is Turing-Complete
    const currentIndex = buttons.indexOf(currentButton);
    const step = 1 * (checkColumns ? getGridColumns(container) : 1) * (jumpAhead ? 5 : jumps);
    let nextIndex = (currentIndex - step) % buttons.length;
    let attempts = 0;
    if (nextIndex < 0) { 
        if (!jumpAhead && checkColumns) {
            if (container.classList.contains("menu") && isElementVisible(SEARCH_BAR)) return SEARCH_BAR.focus();
            if (currentButton.classList.contains("search-input")) return document.querySelector(".sidebar-button-active")?.querySelector("button").focus();
        }
        nextIndex = buttons.length-1;
        
    }
    while (!isElementVisible(buttons[nextIndex]) && attempts < buttons.length) {
        if (nextIndex < 0) nextIndex = buttons.length-1;
        nextIndex = (nextIndex - 1) % buttons.length;
        attempts++;
    }
    if (attempts < buttons.length) {
        buttons[nextIndex]?.focus();
        buttons[nextIndex]?.scrollIntoView({block: "center"})
        PlaySoundFrontend("NAV_UP_DOWN");
    }
}

function navigateDown(currentButton, jumpAhead = false, jumps = 1, checkColumns = false) {
    if (!currentButton) return;
    const container = currentButton.closest(".btn-list");
    if (!container) return;
    const buttons = Array.from(container.querySelectorAll("button:not(.hidden), input:not(.hidden)"));
    const currentIndex = buttons.indexOf(currentButton);
    const step = 1 * (checkColumns ? getGridColumns(container) : 1) * (jumpAhead ? 5 : jumps);
    let nextIndex = (currentIndex + step) % buttons.length;
    let attempts = 0;

    if (currentButton.classList.contains("btn-clear-search") && checkColumns) return querySelectorVisible(document.querySelector(".grid"))?.focus();
    
    while (!isElementVisible(buttons[nextIndex]) && attempts < buttons.length) {
        nextIndex = (nextIndex + 1) % buttons.length;
        attempts++;
    }
    
    if (attempts < buttons.length) {
        buttons[nextIndex]?.focus();
        buttons[nextIndex]?.scrollIntoView({block: "center"})
        PlaySoundFrontend("NAV_UP_DOWN");
    }
}