"use strict";

import { HandleLocales } from "./utils.js";

export class Popover {
    constructor(triggerSelector) {
        this.triggerSelector = triggerSelector;
        this.currentPopover = null;
        this.currentButton = null;
        this.init();
    }

    init() {
        document.addEventListener('contextmenu', (e) => {
            console.log(e);
            let event = JSON.parse(JSON.stringify(e));
            event.target = document.activeElement;
            const rect = event.target.getBoundingClientRect();
            event.clientX = rect.left + rect.width/2;
            event.clientY = rect.top + rect.height/2;
            if (event.target.closest(this.triggerSelector)) {
                e.preventDefault();
                console.log("run")
                this.currentButton = event.target.closest(this.triggerSelector);
                this.show(event);
            }
        });

        // Close popover on click outside
        document.addEventListener('click', (e) => {if (!e.shiftKey) this.hide()});
        
        document.addEventListener('keyup', (e) => {
            if (e.key === 'Escape' || e.key === "Backspace") {
                if (document.querySelector(".popover")) {
                    this.currentButton?.focus();
                    this.hide();
                }
            }
        });
    }

    show(event) {
        this.hide(); // Close any existing popover

        const data = {
            emoteId: this.currentButton.dataset.emoteid,
            emoteType: this.currentButton.dataset.emoteType,
            isFavorite: this.currentButton.classList.contains("btn-emote-favorite")
        }

        const popover = document.createElement('div');
        popover.className = 'popover';
        document.body.appendChild(popover);

        if (data.emoteId) {
            popover.insertAdjacentHTML("beforeend", `<button class="popover-menu-item" data-action="groupemote">${Locale.translate("btn_groupselect")}</button>`)
            popover.insertAdjacentHTML("beforeend", `<button class="popover-menu-item" data-action="placement">${Locale.translate("btn_place")}</button>`)
            popover.insertAdjacentHTML("beforeend", `<button class="popover-menu-item" data-action="keybind">${Locale.translate("btn_setkeybind")}</button>`)
            popover.insertAdjacentHTML("beforeend", `<button class="popover-menu-item" data-action="favorite">${data.isFavorite ? Locale.translate("btn_remove_favorite") : Locale.translate("btn_set_favorite")}</button>`)
        }
        popover.firstElementChild?.focus();

        // Position popover
        popover.style.left = (event.clientX) + 'px';
        popover.style.top = (event.clientY) + 'px';

        // Adjust if it goes off-screen
        const popoverRect = popover.getBoundingClientRect();
        if (popoverRect.right > window.innerWidth) {
            popover.style.left = (event.clientX - popoverRect.width) + 'px';
        }
        if (popoverRect.bottom > window.innerHeight) {
            popover.style.top = (event.clientY - popoverRect.height) + 'px';
        }

        this.currentPopover = popover;

        // Stop propagation to avoid immediate close
        popover.addEventListener('click', (e) => e.stopPropagation());

        // Dispatch custom event with button context
        popover.addEventListener('click', (e) => {
            const action = e.target.closest('.popover-menu-item')?.dataset.action;
            if (action) {
                const event = new CustomEvent('popoverAction', {
                    detail: {
                        action: action,
                        button: this.currentButton,
                        data: data,
                        event: e
                    }
                });
                document.dispatchEvent(event);
                this.hide();
            }
        });
    }

    hide() {
        if (this.currentPopover) {
            this.currentPopover.remove();
            this.currentPopover = null;
        }
    }
}


export class Locale {
    static LOCALES = {};

    constructor() {
        HandleLocales().then((retval) => {
            Locale.LOCALES = retval
            const event = new CustomEvent('localesLoaded');
            document.dispatchEvent(event);
        });
    }

    static translate(key) {
        if (Locale.LOCALES[key]) return Locale.LOCALES[key];
        return String(key);
    }
}