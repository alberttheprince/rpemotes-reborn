"use strict";

import { ExecuteNUICallback, PlaySoundFrontend, querySelectorVisible } from "./utils.js";

const SEARCH_BAR = document.querySelector(".search-input");

document.addEventListener("keydown", (e) => {
    switch (e.key) {
        case "ArrowUp":
        case "ArrowDown":
        case "ArrowLeft":
        case "ArrowRight":
        case " ":
            e.preventDefault();
            break;
        
    }
})

// We use keyup to delay the action a bit. This helps us to not open the pause menu when closing the emote menu, for example.
document.addEventListener("keyup", (e) => { 
    const FOCUS_ELEMENT = document.activeElement;
    switch (e.key) {
        case "Escape":
        case "Backspace":
            if (!FOCUS_ELEMENT) return ExecuteNUICallback("CLOSE_MENU", {});
            if (FOCUS_ELEMENT === document.querySelector(".search-input") && document.querySelector(".search-input")?.value !== "") return;
            if (FOCUS_ELEMENT.closest(".popover")) return;

            PlaySoundFrontend("BACK");
            if (FOCUS_ELEMENT.closest(".keybinds-menu")) return document.querySelector(".sidebar-button-active").querySelector(".btn")?.focus();
            if (FOCUS_ELEMENT.closest(".grid")) return document.querySelector(".btn-clear-search").focus();
            if (FOCUS_ELEMENT.closest(".content-container")) return document.querySelector(".sidebar-button-active").querySelector(".btn")?.focus();
            return ExecuteNUICallback("CLOSE_MENU", {});
            break;
        case "ArrowDown":
            focusOnNextButton(FOCUS_ELEMENT, e.shiftKey);
            break;
        case "ArrowUp":
            focusOnPreviousButton(FOCUS_ELEMENT, e.shiftKey);
            break;
    }
})

document.addEventListener("scroll", (e) => e.preventDefault());

document.addEventListener("mouseover", (e) => {
    const TARGET = e.target
    if (TARGET.nodeName === "BUTTON" || TARGET.nodeName === "INPUT") {
        PlaySoundFrontend("NAV_UP_DOWN")
        TARGET.focus();
    }
})

SEARCH_BAR.addEventListener("focus", (e) => {
    ExecuteNUICallback("SEARCH_BAR_FOCUS", {isFocused: true});
})

SEARCH_BAR.addEventListener("blur", (e) => {
    ExecuteNUICallback("SEARCH_BAR_FOCUS", {isFocused: false});
})


function isElementVisible(element) {
    return element?.style?.display !== "none";
}

// TODO:    There has to be a better way to write keyboard navigation, than this.
//          Code is hardcoded to check the 3 spaces where buttons might be, and also hardcoded to handle it based on how the HTML looks for each.
//          Ideally, this should automagically find the previous/next focusable item in the DOM, like how the normal [Tab] action does.
function focusOnNextButton(currentButton, jumpAhead = false) {
    if (currentButton && currentButton.closest(".grid")) {
        const gridContainer = currentButton.closest(".grid");
        const buttons = Array.from(gridContainer.querySelectorAll(".btn-emote") || gridContainer.querySelectorAll(".btn-emoji"));
        const currentIndex = buttons.indexOf(currentButton);
        const step = jumpAhead ? 10 : 1;
        let nextIndex = (currentIndex + step) % buttons.length;
        let attempts = 0;
        
        while (!isElementVisible(buttons[nextIndex]) && attempts < buttons.length) {
            nextIndex = (nextIndex + 1) % buttons.length;
            attempts++;
        }
        
        if (attempts < buttons.length) {
            buttons[nextIndex]?.focus();
            buttons[nextIndex]?.scrollIntoView({block: "center"})
        }
    } else if (currentButton && currentButton.closest(".popover")) {
        const gridContainer = currentButton.closest(".popover");
        const buttons = Array.from(gridContainer.querySelectorAll(".popover-menu-item"));
        const currentIndex = buttons.indexOf(currentButton);
        const step = 1;
        let nextIndex = (currentIndex + step) % buttons.length;
        let attempts = 0;
        
        while (!isElementVisible(buttons[nextIndex]) && attempts < buttons.length) {
            nextIndex = (nextIndex + 1) % buttons.length;
            attempts++;
        }
        
        if (attempts < buttons.length) {
            buttons[nextIndex]?.focus();
        }
    } else if (currentButton && currentButton.closest(".side-navigation")) {
        const li = currentButton.closest("li");
        const ulElement = li.parentElement;
        const liElements = Array.from(ulElement.querySelectorAll("li"));
        const currentIndex = liElements.indexOf(li);
        const nextIndex = (currentIndex + (jumpAhead ? 2 : 1)) % liElements.length;
        const button = liElements[nextIndex]?.querySelector(".btn-sidebar");
        button ? button?.focus() : ulElement.firstElementChild.querySelector(".btn-sidebar")?.focus();
    } else if (currentButton && currentButton.closest(".search-container")) {
        const gridContainer = currentButton.closest(".search-container");
        const elements = Array.from(gridContainer.querySelectorAll("input"));
        const currentIndex = elements.indexOf(currentButton);
        const nextIndex = currentIndex + 1;
        elements[nextIndex] ? elements[nextIndex]?.focus() : querySelectorVisible(document.querySelector(".grid"))?.focus();
    }
    PlaySoundFrontend("NAV_UP_DOWN");
}

function focusOnPreviousButton(currentButton, jumpAhead = false) {
    if (currentButton && currentButton.closest(".grid")) {
        const gridContainer = currentButton.closest(".grid");
        const buttons = Array.from(gridContainer.querySelectorAll(".btn-emote") || gridContainer.querySelectorAll(".btn-emoji"));
        const currentIndex = buttons.indexOf(currentButton);
        if (currentIndex === 0) return SEARCH_BAR.focus();
        const step = jumpAhead ? 10 : 1;
        let nextIndex = ((currentIndex - step) % buttons.length + buttons.length) % buttons.length;
        let attempts = 0;
        
        while (!isElementVisible(buttons[nextIndex]) && attempts < buttons.length) {
            nextIndex = ((nextIndex - 1) % buttons.length + buttons.length) % buttons.length;
            attempts++;
        }
        
        if (attempts < buttons.length) {
            buttons[nextIndex]?.focus();
            buttons[nextIndex]?.scrollIntoView({block: "center"})
        }
    } else if (currentButton && currentButton.closest(".popover")) {
        const gridContainer = currentButton.closest(".popover");
        const buttons = Array.from(gridContainer.querySelectorAll(".popover-menu-item"));
        const currentIndex = buttons.indexOf(currentButton);
        const step = 1;
        let nextIndex = ((currentIndex - step) % buttons.length + buttons.length) % buttons.length;
        let attempts = 0;
        
        while (!isElementVisible(buttons[nextIndex]) && attempts < buttons.length) {
            nextIndex = ((nextIndex - 1) % buttons.length + buttons.length) % buttons.length;
            attempts++;
        }
        
        if (attempts < buttons.length) {
            buttons[nextIndex]?.focus();
        }
    } else if (currentButton && currentButton.closest(".side-navigation")) {
        const li = currentButton.closest("li");
        const ulElement = li.parentElement;
        const liElements = Array.from(ulElement.querySelectorAll("li"));
        const currentIndex = liElements.indexOf(li);
        const nextIndex = (currentIndex - (jumpAhead ? 2 : 1)) % liElements.length;
        const button = liElements[nextIndex]?.querySelector(".btn");
        button ? button?.focus() : ulElement.lastElementChild.querySelector(".btn-sidebar")?.focus();
    } else if (currentButton && currentButton.closest(".search-container")) {
        const gridContainer = currentButton.closest(".search-container");
        const elements = Array.from(gridContainer.querySelectorAll("input"));
        const currentIndex = elements.indexOf(currentButton);
        const nextIndex = currentIndex - 1;
        elements[nextIndex] ? elements[nextIndex]?.focus() : document.querySelector(".sidebar-button-active")?.querySelector(".btn-sidebar")?.focus();
    }
    PlaySoundFrontend("NAV_UP_DOWN");
}