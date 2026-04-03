"use strict";

import { HandleLocales, querySelectorVisible } from "./utils.js";

export class Popover {
    _keybindSlots = 0;

    constructor(triggerSelector) {
        this.triggerSelector = triggerSelector;
        this.currentPopover = null;
        this.currentButton = null;
        this.init();
    }

    init() {
        document.addEventListener('contextmenu', (e) => {
            let event = JSON.parse(JSON.stringify(e));
            event.target = document.activeElement;
            const rect = event.target.getBoundingClientRect();
            event.clientX = rect.left + rect.width/2;
            event.clientY = rect.top + rect.height/2;
            if (event.target.closest(this.triggerSelector)) {
                e.preventDefault();
                this.currentButton = event.target.closest(this.triggerSelector);
                this.show(event);
            }
        });

        // Close popover on click outside
        document.addEventListener('click', (e) => {if (!e.shiftKey) this.hide()});
        
        document.addEventListener('keyup', (e) => {
            if (e.key === 'Escape' || e.key === "Backspace") {
                if (document.querySelector(".popover")) {
                    this.hide();
                }
            }
        });
    }

    show(event) {
        this.hide(); // Close any existing popover

        const data = {
            emoteId: this.currentButton.dataset.emoteid,
            emoteType: this.currentButton.dataset.emotetype,
            isFavorite: this.currentButton.classList.contains("btn-emote-favorite")
        }

        const popover = document.createElement('div');
        popover.className = 'popover';
        document.body.appendChild(popover);

        if (data.emoteId) {
            if (!this.currentButton.classList.contains("btn-keybind")) {
                if (data.emoteType && data.emoteType !== "Emojis" && data.emoteType !== "Expressions" && data.emoteType !== "Walks" && data.emoteType !== "Shared") {
                    popover.insertAdjacentHTML("beforeend", `<button class="popover-menu-item" data-action="groupemote">${Locale.translate("btn_groupselect")}</button>`)
                    popover.insertAdjacentHTML("beforeend", `<button class="popover-menu-item" data-action="placement">${Locale.translate("btn_place")}</button>`)
                }
                popover.insertAdjacentHTML("beforeend", `<button class="popover-menu-item" data-action="favorite">${data.isFavorite ? Locale.translate("btn_remove_favorite") : Locale.translate("btn_set_favorite")}</button>`)

                //TODO: This needs to be a HTML list.
                for (let i = 1; i <= Popover._keybindSlots; i++) {
                    popover.insertAdjacentHTML("beforeend", `<button class="popover-menu-item keybind-popover" data-action="set-keybind" data-slotid="${i}">${Locale.translate("btn_setkeybind")} (${i})</button>`)
                }
            } else {
                popover.insertAdjacentHTML("beforeend", `<button class="popover-menu-item" data-action="clear-keybind">${Locale.translate("btn_delkeybind")}</button>`)
            }
        } else {
            this.hide()
            return;
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
                        popoverButton: e.target.closest('.popover-menu-item'),
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
            if (this.currentButton) {
                this.currentButton.focus();
            } else {
                querySelectorVisible(document.querySelector(".grid"))
            }
        }
    }

    static setKeybindSlots(slots) {
        Popover._keybindSlots = Number(slots) || 0;
        console.log(Popover._keybindSlots)
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