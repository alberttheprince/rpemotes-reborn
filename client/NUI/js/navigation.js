"use strict";

import { ExecuteNUICallback } from "./utils.js";

const SEARCH_BAR = document.querySelector(".search-input");

document.addEventListener("keyup", (e) => {
    switch (e.key) {
        case "Escape":
            const FOCUS_ELEMENT = document.activeElement;
            if (!FOCUS_ELEMENT) return ExecuteNUICallback("CLOSE_MENU", {});

            if (FOCUS_ELEMENT.closest(".grid")) return SEARCH_BAR.focus();
            if (FOCUS_ELEMENT.closest(".content-container")) return document.querySelector(".btn-sidebar").focus();
            return ExecuteNUICallback("CLOSE_MENU", {});
            break;
    }
})

SEARCH_BAR.addEventListener("focus", (e) => {
    ExecuteNUICallback("SEARCH_BAR_FOCUS", {isFocused: true});
})

SEARCH_BAR.addEventListener("blur", (e) => {
    ExecuteNUICallback("SEARCH_BAR_FOCUS", {isFocused: false});
})