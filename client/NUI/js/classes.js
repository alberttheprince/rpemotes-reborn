"use strict";

import { HandleLocales } from "./utils.js";

export class Popover {
    constructor(triggerSelector, popoverHTML) {
        this.triggerSelector = triggerSelector;
        this.popoverHTML = popoverHTML;
        this.currentPopover = null;
        this.currentButton = null;
        this.init();
    }

    init() {
        document.addEventListener('contextmenu', (e) => {
            if (e.target.closest(this.triggerSelector)) {
                e.preventDefault();
                this.currentButton = e.target.closest(this.triggerSelector);
                this.show(e);
            }
        });

        // Close popover on click outside
        document.addEventListener('click', () => this.hide());
        
        // Close popover on Escape key
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape') this.hide();
        });
    }

    show(event) {
        this.hide(); // Close any existing popover

        const popover = document.createElement('div');
        popover.className = 'popover';
        popover.innerHTML = this.popoverHTML;
        document.body.appendChild(popover);

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
                        emoteId: this.currentButton.dataset.emoteid,
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