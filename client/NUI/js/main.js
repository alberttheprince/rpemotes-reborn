"use strict";
import { ClearHTMLContainer, HandleSidebarButtonPress, ExecuteNUICallback, PlaySoundFrontend, HandleEmoteSearch, querySelectorVisible } from './utils.js';
import { Locale, Popover } from './classes.js'


const SIDE_NAVIGATION = document.querySelector(".side-navigation");
const CONTENT_CONTAINER = document.querySelector(".content-container");
const SEARCH_CONTAINER = document.querySelector(".search-container");
const SEARCH_BAR = SEARCH_CONTAINER.querySelector(".search-input");
let MENUS = CONTENT_CONTAINER.querySelectorAll(".menu");
const FOOTER_TEXT = document.querySelector(".footer-text");

let EMOTE_TYPE_ICONS = {}
export let CONFIG;

window.addEventListener("load", async (e) => {

    ExecuteNUICallback("NUI_READY", {}).then( async (res) => {
        const response = await res.json();
        if (!response.config) return;
        CONFIG = response.config;

        if (!CONFIG.Search) SEARCH_CONTAINER.classList.add("hidden");
        if (!CONFIG.EmojiMenuEnabled) document.querySelector('[data-menu="emojis-menu"]')?.parentElement?.remove();
        if (!CONFIG.ExpressionsEnabled) document.querySelector('[data-menu="moods-menu"]')?.parentElement?.remove();
        if (!CONFIG.WalkingStylesEnabled) document.querySelector('[data-menu="walkstyles-menu"]')?.parentElement?.remove();
        if (!CONFIG.Keybinding) document.querySelector('[data-menu="keybinds-menu"]')?.parentElement?.remove();
        if (CONFIG.MenuPosition === "left") document.body.classList.add("align-left");
    })
    const LOCALES = new Locale(); // We just need to init this after the everything is loaded. The class statics will handle everything.
})

document.addEventListener('popoverAction', (e) => {
    const { action, button, popoverButton, emoteId, event } = e.detail;
    switch (action) {
        case 'groupemote':
            ExecuteNUICallback("ROUTE_EMOTE", {type: "groupemote", emoteName: button.dataset.emoteid, emoteType: button.dataset.emotetype})
            break;
        case 'placement':
            ExecuteNUICallback("ROUTE_EMOTE", {type: "placement", emoteName: button.dataset.emoteid, emoteType: button.dataset.emotetype})
            break;
        case 'set-keybind':
            ExecuteNUICallback("KEYBIND_EMOTE", {type: "set", id: (popoverButton && popoverButton.dataset.slotid) || 1, emoteName: button.dataset.emoteid, emoteType: button.dataset.emotetype, emoteLabel: button.dataset.label})
            if (!document.activeElement || document.activeElement.nodeName !== "BUTTON") querySelectorVisible(document.querySelector(".grid"))?.focus();
            break;
        case 'clear-keybind':
            ExecuteNUICallback("KEYBIND_EMOTE", {type: "clear", id: button.dataset.slotid, emoteName: button.dataset.emoteid, emoteType: button.dataset.emotetype})
            break;
        case 'favorite':
            ExecuteNUICallback("FAVORITE_EMOTE", {emoteName: button.dataset.emoteid, emoteType: button.dataset.emotetype, emoteLabel: button.dataset.label}).then( async (res) => {
                const result = await res.json();
                if (!result.favorites) return;
                const ELEMENTS = Array.from(document.querySelectorAll(`.btn-emote-favorite`));
                const MENU = document.querySelector(".favorites-menu")
                ClearHTMLContainer(".favorites-menu");
                ELEMENTS.forEach((el) => el?.classList.remove("btn-emote-favorite"));
                result.favorites?.forEach((emote) => {
                    const ELEMENTS = Array.from(document.querySelectorAll(`[data-emoteid="${emote.name}"]`));
                    ELEMENTS.forEach((el) => el?.classList.add("btn-emote-favorite"));
                    MENU.insertAdjacentHTML("beforeend", `
                            <button class="btn btn-emote btn-emote-favorite" data-emoteid="${emote.name}" data-emoteType="${emote.emoteType}" data-label="${emote.label}">${emote.emoteType !== 'Emojis' ? EMOTE_TYPE_ICONS[emote.emoteType]+" " : ""}${emote.label}</button>
                            `)
                })
                if (!document.activeElement || document.activeElement.nodeName !== "BUTTON") querySelectorVisible(document.querySelector(".grid"))?.focus();
            })
            break;
    }
});

document.addEventListener('localesLoaded', (e) => {
    // Handler for Right-click menu.
    // All logic is done through the class, sadly. Sends a `popoverAction` custom event when a button is used.
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    const emotePopover = new Popover('.btn-emote');
})

SIDE_NAVIGATION.addEventListener("click", (e) => {
    const TARGET = e.target;

    if (TARGET && TARGET.dataset.action) {
        HandleSidebarButtonPress(TARGET);
        return;
    }
})

let sendPreviewRequest = true

function _setupMenuEventListeners(MENUS) {
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

                let _previewData = {}
                if (TARGET.dataset.emotetype === "Expressions") _previewData = {emoteName: TARGET.dataset.emoteid, emoteType: TARGET.dataset.emotetype}
                if (sendPreviewRequest) {
                    sendPreviewRequest = false
                    ExecuteNUICallback("PREVIEW_EMOTE", {emoteName: TARGET.dataset.emoteid, emoteType: TARGET.dataset.emotetype}).finally(() => sendPreviewRequest = true)
                }
                return;
            }

            if (sendPreviewRequest) {
                sendPreviewRequest = false
                ExecuteNUICallback("PREVIEW_EMOTE", {emoteName: TARGET.dataset.emoteid, emoteType: TARGET.dataset.emotetype}).finally(() => sendPreviewRequest = true)
            }

            FOOTER_TEXT.textContent = `/${TARGET.closest(".walkstyles-menu") ? "walk" : "e"} ${TARGET.dataset.emoteid}`
        })

        element.addEventListener("click", (e) => {
            e.preventDefault();
            const TARGET = e.target;
            if (!TARGET.dataset.emoteid || !TARGET.dataset.emotetype) return;
            PlaySoundFrontend("SELECT");
            if (e.shiftKey) {
                // Bodge to trick the browser into thinking we right-clicked, when in fact we Shift+Entered.
                document.dispatchEvent(new CustomEvent('contextmenu', { detail: {}}));
                return;
            }
            ExecuteNUICallback("ROUTE_EMOTE", {type: "emote", emoteName: TARGET.dataset.emoteid, emoteType: TARGET.dataset.emotetype})
        })
    })
}

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

    if (event.data.type === 'TOGGLE_CURSOR_INPUT') {
        (event.data.value ? document.body.classList.remove("no-cursor") : document.body.classList.add("no-cursor"))
    }

    if (event.data.type === 'LOAD_EMOTE_DATA') {
        // event.data.emoteData && event.data.categoryToEmotes && event.data.emoteCategories && event.data.emoteTypeIcons
        EMOTE_TYPE_ICONS = event.data.emoteTypeIcons || {}
        const emoteCategories = event.data.emoteCategories
        Object.keys(emoteCategories).forEach((key) => {
            const SIDEBAR_ANCHOR = document.querySelector(".sidebar-button-anchor");
            const MENU_ANCHOR = document.querySelector(".menu-anchor");
            
            SIDEBAR_ANCHOR.insertAdjacentHTML("afterend",
                `
                    <li class="sidebar-button-container">
                        <button class="btn btn-sidebar" data-action="openMenu" data-menu="${emoteCategories[key].id}-menu">${emoteCategories[key].icon}</button>
                        <span class="btn-sidebar-label">${key}</span>
                    </li>
                `);

            MENU_ANCHOR.insertAdjacentHTML("afterend",
                `
                <article class="menu ${emoteCategories[key].id}-menu doublecolumn">Hiii
                </article>
                `)
        })
        MENUS = CONTENT_CONTAINER.querySelectorAll(".menu");
        _setupMenuEventListeners(MENUS);
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
                            <button class="btn btn-emote ${el.isFavorite ? "btn-emote-favorite" : ""} ${el.emoteType === "Emojis" ? "noto-color-emoji-regular" : ""}" data-emoteid="${el.emoteName}" data-emoteType="${el.emoteType}" data-label="${el.label}">${el.emoteType !== 'Emojis' ? EMOTE_TYPE_ICONS[el.emoteType]+" " : ""}${el.label}</button>
                            `)
                    }
                })
            }
        })
        event.data.favorites?.forEach((emote) => {
            const ELEMENTS = Array.from(document.querySelectorAll(`[data-emoteid="${emote.emoteName}"]`));
            ELEMENTS.forEach((el) => el?.classList.add("btn-emote-favorite"));
        })
    }

    if (event.data.type === "BUILD_KEYBINDS_MENU") {
        // This runs every time the player opens the emote menu.
        // We need it to run like this because we don't know when the player will change their keybinds in the settings.
        const kbinds = event.data.keybinds
        const KEYBINDS_LIST_CONTAINER = document.querySelector(".keybinds-list");

        const BIND_ITEMS = Array.from(document.querySelectorAll(".keybinds-list-item"));
        BIND_ITEMS?.forEach((el) => el.remove());

        Object.keys(kbinds).sort().forEach((key) => {
            const data = kbinds[key]
            KEYBINDS_LIST_CONTAINER?.insertAdjacentHTML("beforeend",
                `
                <li class="keybinds-list-item">
                    <span class="keybind-item-text">Slot ${data.id} [ <span class="keybind-bind-text keybind-${data.id}-bind">${data.keyLabel}</span> ]</span>
                    <button class="btn btn-emote btn-keybind" data-emoteid="${data.emoteName}" data-emoteType="${data.emoteType}" data-slotid="${data.id}">${data.emoteType && data.emoteType !== 'Emojis' ? EMOTE_TYPE_ICONS[data.emoteType]+" " : ""}${data.emoteLabel || data.emoteName || Locale.translate("empty_slot")}</button>
                </li>
                `

            )
        })
        if (document.querySelector(".keybinds-menu.grid")) {
            querySelectorVisible(document.querySelector(".keybinds-list"))?.focus();
        }

        Popover.setKeybindSlots(Object.keys(kbinds).length)
    }
});

