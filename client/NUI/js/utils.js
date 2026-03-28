"use strict";

export function ClearHTMLContainer(elementClass) {
    const ELEMENT = document.querySelector(elementClass);
    let retval = 0;
    if (ELEMENT) {
        retval = ELEMENT.children.length;
        ELEMENT.innerHTML = "" // Woah.
    }
    return retval;
}

export function HandleSidebarButtonPress(el) {
    if (!el || !el.dataset.action) return;
    const CONTENT_CONTAINER = document.querySelector(".content-container")
    switch (el.dataset.action) {
        case "openMenu":
            const PREVIOUS_ACTIVE_BUTTON_CONTAINER = document.querySelector(".sidebar-button-active");
            const PREVIOUS_ACTIVE_BUTTON = PREVIOUS_ACTIVE_BUTTON_CONTAINER.querySelector(".btn-sidebar");

            if (PREVIOUS_ACTIVE_BUTTON_CONTAINER) {
                PREVIOUS_ACTIVE_BUTTON_CONTAINER.classList.remove("sidebar-button-active");
                CONTENT_CONTAINER.querySelectorAll(".grid").forEach((el) => {
                    el.classList.remove("grid")
                })
            }
                
            const BUTTON_CONTAINER = el.closest(".sidebar-button-container")
            if (BUTTON_CONTAINER) BUTTON_CONTAINER.classList.add("sidebar-button-active");
            const OPENED_MENU = CONTENT_CONTAINER.querySelector(`.${el.dataset.menu}`)
            OPENED_MENU?.classList.add("grid");
            querySelectorVisible(OPENED_MENU)?.focus();
            // This is why people use frontend frameworks, I guess. -- CritteR
            break;
        case "cancelEmote":
            const req = ExecuteNUICallback("CANCEL_EMOTE", {}).finally((retval) => {}) 
            break;
        default:
            console.log(`What am I supposed to do with this action? (${el.dataset.action})`)
            break;
    }
}

export function HandleEmoteSearch(search, menu = ".grid") {
    const CONTENT_CONTAINER = document.querySelector(".content-container");
    const searchValue = typeof search !== "undefined" ? search?.toLowerCase() : document.querySelector(".search-input").value.toLowerCase();
    const gridElements = CONTENT_CONTAINER.querySelectorAll(menu);
    
    gridElements.forEach((grid) => {
        const buttons = grid.querySelectorAll("[data-emoteid]");
        buttons.forEach((button) => {
            const emoteId = button.dataset.emoteid.toLowerCase();
            button.style.display = emoteId.includes(searchValue) ? "" : "none";
        })
    })
}

export function querySelectorVisible(parent, query = ".btn") {
    const elements = parent?.querySelectorAll(query);
    let retval;
    for (const el of elements) {
        if (el?.style?.display !== "none") {
            retval = el;
            break;
        }
    }
    return retval;
}

export async function HandleLocales() {
    const req = await ExecuteNUICallback("GET_LOCALES", {})
    if (!req) {
        console.log(req)
        return {}
    };
    const LOCALES = await req.json()
    if (!LOCALES || !LOCALES.data) return {};
    document.querySelectorAll("[data-locale]").forEach((el) => {
        // I love the JavaScript, hollyyyy.
        if (LOCALES.data[el.dataset.locale]) {
            if (el.hasAttribute("placeholder")) {
                el.setAttribute("placeholder", LOCALES.data[el.dataset.locale])
            } else {
                el.textContent = LOCALES.data[el.dataset.locale]
            }
        }
    })
    return LOCALES.data;
}

export async function ExecuteNUICallback(callback, data) {
    let retval = await fetch(`https://${GetParentResourceName()}/${callback}`, {
			method: "POST",
			headers: {
				"Content-Type": "application/json; charset=UTF-8",
			},
			body: JSON.stringify(data),
		});

    return retval
}

let playSoundAllowed = true;
export function PlaySoundFrontend(soundName) {
    if (!playSoundAllowed) return;
    playSoundAllowed = false;
    ExecuteNUICallback("PLAY_SOUND_FRONTEND", {soundName: "SELECT"});
    setTimeout(() => {playSoundAllowed = true}, 100)
}