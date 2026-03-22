"use strict";
import { ClearHTMLContainer, HandleSidebarButtonPress, ExecuteNUICallback } from './utils.js';
import { Locale, Popover } from './classes.js'


const SIDE_NAVIGATION = document.querySelector(".side-navigation");
const CONTENT_CONTAINER = document.querySelector(".content-container");
const SEARCH_CONTAINER = document.querySelector(".search-container");
const MENUS = CONTENT_CONTAINER.querySelectorAll(".menu");
const FOOTER_TEXT = document.querySelector(".footer-text");

window.addEventListener("load", async (e) => {
    ExecuteNUICallback("NUI_READY", {}).finally(() => {})
    const LOCALES = new Locale(); // We just need to init this after the everything is loaded.
})

document.addEventListener('popoverAction', (e) => {
    const { action, button, emoteId, event } = e.detail;
    switch (action) {
        case 'groupemote':
            break;
        case 'placement':
            break;
        case 'keybind':
            break;
        case 'favorite':
            break;
    }
});

document.addEventListener('localesLoaded', (e) => {
    // Handler for Right-click menu.
    // Can we please have updated CEF in FiveM? I want my Popover API. --CritteR
    /////////////////////////////////////////////////////////////////////////////////
    const emotePopover = new Popover('.btn-emote', `
        <p>/e somecommand</p>
        <button class="popover-menu-item" data-action="groupemote">${Locale.translate("btn_groupselect")}</button>
        <button class="popover-menu-item" data-action="placement">${Locale.translate("btn_place")}</button>
        <button class="popover-menu-item" data-action="keybind">${Locale.translate("btn_setkeybind")}</button>
        <button class="popover-menu-item" data-action="favorite">${Locale.translate("btn_set_favorite")}</button>
    `);
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

MENUS.forEach((element) => {
    element.addEventListener("mouseover", (e) => {
        const TARGET = e.target;
        if (!TARGET.dataset.emoteid) {
            FOOTER_TEXT.innerHTML = "&nbsp;"
            return;
        }
            
        FOOTER_TEXT.textContent = `/${TARGET.closest(".walkstyles-menu") ? "walk" : "e"} ${TARGET.dataset.emoteid}`
    })

    element.addEventListener("focusin", (e) => {
        const TARGET = e.target;
        if (!TARGET.dataset.emoteid) {
            FOOTER_TEXT.innerHTML = "&nbsp;"
            return;
        }
            
        FOOTER_TEXT.textContent = `/${TARGET.closest(".walkstyles-menu") ? "walk" : "e"} ${TARGET.dataset.emoteid}`
    })

    element.addEventListener("click", (e) => {
        e.preventDefault();
        const TARGET = e.target;
        if (!TARGET.dataset.emoteid || !TARGET.dataset.emotetype) return;

        ExecuteNUICallback("ROUTE_EMOTE", {emoteName: TARGET.dataset.emoteid, emoteType: TARGET.dataset.emotetype})
    })
})

SEARCH_CONTAINER.addEventListener("submit", (e) => {
    e.preventDefault();
})


window.addEventListener('message', (event) => {
    if (event.data.type === 'OPEN_MENU') {
        (event.data.value ? document.body.style.display = "flex" : document.body.style.display = "none")
    }

    if (event.data.type === 'LOAD_EMOTE_DATA') {
        // event.data.emoteData && event.data.categoryToEmotes
    }

    if (event.data.type === 'BUILD_EMOTE_MENUS') {
        // event.data
        console.log(event.data)

        Object.keys(event.data).forEach((key) => {
            if (key !== "type" && key !== "keybinds") {
                const EMOTES = CONTENT_CONTAINER.querySelector(`.${key}-menu`);
                if (!EMOTES) return;
                ClearHTMLContainer(`.${key}-menu`);
                event.data[key].forEach((el) => {
                    if (el) {
                        EMOTES.insertAdjacentHTML("beforeend", `
                            <button class="btn btn-${el.emoteType === "Emojis" ? "emoji" : "emote"} ${el.isFavorite ? "btn-emote-favorite" : ""}" data-emoteid="${el.id}" data-emoteType="${el.emoteType}">${el.label}</button>
                            `)
                    }
                })
            }
        })
    }
});

