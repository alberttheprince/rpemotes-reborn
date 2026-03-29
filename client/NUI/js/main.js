"use strict";
import { ClearHTMLContainer, HandleSidebarButtonPress, ExecuteNUICallback, PlaySoundFrontend, HandleEmoteSearch } from './utils.js';
import { Locale, Popover } from './classes.js'


const SIDE_NAVIGATION = document.querySelector(".side-navigation");
const CONTENT_CONTAINER = document.querySelector(".content-container");
const SEARCH_CONTAINER = document.querySelector(".search-container");
const SEARCH_BAR = SEARCH_CONTAINER.querySelector(".search-input");
const MENUS = CONTENT_CONTAINER.querySelectorAll(".menu");
const FOOTER_TEXT = document.querySelector(".footer-text");

let EMOTE_TYPE_ICONS = {}

window.addEventListener("load", async (e) => {
    ExecuteNUICallback("NUI_READY", {}).finally(() => {})
    const LOCALES = new Locale(); // We just need to init this after the everything is loaded.
})

document.addEventListener('popoverAction', (e) => {
    const { action, button, emoteId, event } = e.detail;
    switch (action) {
        case 'groupemote':
            ExecuteNUICallback("ROUTE_EMOTE", {type: "groupemote", emoteName: button.dataset.emoteid, emoteType: button.dataset.emotetype})
            break;
        case 'placement':
            ExecuteNUICallback("ROUTE_EMOTE", {type: "placement", emoteName: button.dataset.emoteid, emoteType: button.dataset.emotetype})
            break;
        case 'keybind':
            break;
        case 'favorite':
            ExecuteNUICallback("FAVORITE_EMOTE", {emoteName: button.dataset.emoteid, emoteType: button.dataset.emotetype, emoteLabel: button.dataset.label})
            break;
    }
});

document.addEventListener('localesLoaded', (e) => {
    // Handler for Right-click menu.
    // Can we please have updated CEF in FiveM? I want my Popover API. --CritteR
    /////////////////////////////////////////////////////////////////////////////////
    const emotePopover = new Popover('.btn-emote');
})


// Sidebar Logic. We just handle everything in the utils anyway, to keep this file tidy.
// No, I will not stop over-commeting. Why do you ask?
////////////////////////////////////////////////////////////////////////////////////
SIDE_NAVIGATION.addEventListener("click", (e) => {
    const TARGET = e.target;

    if (TARGET && TARGET.dataset.action) {
        HandleSidebarButtonPress(TARGET);
        return;
    }
})

let sendPreviewRequest = true

MENUS.forEach((element) => {
    element.addEventListener("mouseover", (e) => {
        const TARGET = e.target;
        if (!TARGET.dataset.emoteid) {
            FOOTER_TEXT.innerHTML = "&nbsp;"
            return;
        }
    })

    element.addEventListener("focusin", (e) => {
        const TARGET = e.target;
        PlaySoundFrontend("NAV_UP_DOWN")
        if (!TARGET.dataset.emoteid || TARGET.dataset.emotetype === "Emojis" || TARGET.dataset.emotetype === "Expressions" || TARGET.dataset.emotetype === "Walks") {
            FOOTER_TEXT.innerHTML = "&nbsp;"
            ExecuteNUICallback("PREVIEW_EMOTE", {})
            return;
        }

        if (sendPreviewRequest) ExecuteNUICallback("PREVIEW_EMOTE", {emoteName: TARGET.dataset.emoteid, emoteType: TARGET.dataset.emotetype}).finally(() => sendPreviewRequest = true)
        
        FOOTER_TEXT.textContent = `/${TARGET.closest(".walkstyles-menu") ? "walk" : "e"} ${TARGET.dataset.emoteid}`
    })

    element.addEventListener("click", (e) => {
        e.preventDefault();
        const TARGET = e.target;
        if (!TARGET.dataset.emoteid || !TARGET.dataset.emotetype) return;
        PlaySoundFrontend("SELECT");
        if (e.shiftKey) {
            console.log("Hi")
            document.dispatchEvent(new CustomEvent('contextmenu', { detail: {}}));
            return;
        }
        ExecuteNUICallback("ROUTE_EMOTE", {type: "emote", emoteName: TARGET.dataset.emoteid, emoteType: TARGET.dataset.emotetype})
    })
})

SEARCH_CONTAINER.addEventListener("submit", (e) => {
    e.preventDefault();
    HandleEmoteSearch();
})


let lastSearchInputValue = ""
SEARCH_BAR.addEventListener("input", (e) => {
    if (SEARCH_BAR.value !== lastSearchInputValue) HandleEmoteSearch();
    lastSearchInputValue = SEARCH_BAR.value
})


window.addEventListener('message', (event) => {
    if (event.data.type === 'OPEN_MENU') {
        (event.data.value ? document.body.style.display = "flex" : document.body.style.display = "none")
        document.querySelector(".btn-sidebar").focus();
    }

    if (event.data.type === 'LOAD_EMOTE_DATA') {
        // event.data.emoteData && event.data.categoryToEmotes && event.data.emoteTypeIcons
        EMOTE_TYPE_ICONS = event.data.emoteTypeIcons || {}
    }

    if (event.data.type === 'BUILD_EMOTE_MENUS') {
        Object.keys(event.data).forEach((key) => {
            if (key !== "type" && key !== "keybinds") {
                const EMOTES = CONTENT_CONTAINER.querySelector(`.${key}-menu`);
                if (!EMOTES) return;
                ClearHTMLContainer(`.${key}-menu`);
                event.data[key].forEach((el) => {
                    if (el) {
                        EMOTES.insertAdjacentHTML("beforeend", `
                            <button class="btn btn-emote ${el.isFavorite ? "btn-emote-favorite" : ""} ${el.emoteType === "Emojis" ? "noto-color-emoji-regular" : ""}" data-emoteid="${el.id}" data-emoteType="${el.emoteType}" data-label="${el.label}">${el.emoteType !== 'Emojis' ? EMOTE_TYPE_ICONS[el.emoteType]+" " : ""}${el.label}</button>
                            `)
                    }
                })
            }
        })
        event.data.favorites?.forEach((emote) => {
            //bruh momment
            const ELEMENTS = Array.from(document.querySelectorAll(`[data-emoteid="${emote.id}"]`));
            ELEMENTS.forEach((el) => el?.classList.add("btn-emote-favorite"));
        })
    }
});

