import {Poster} from "./Poster.js";
import {NssConfirm} from "../../nss/NssConfirm/NssConfirm.js";
import {Language} from "./Language.js";

class PosterDetails extends Poster {

    /**
     * @type {PinBoardOnPosterDetailsClosedCallback}
     * @private
     */
    _on_close_cb = null;

    /**
     * @type {PinBoardOnPosterRemovedCallback}
     * @private
     */
    _on_remove_cb = null;

    /**
     * @inheritDoc
     */
    _determineElements() {

        super._determineElements();

        this._el.classList.add('pb-poster--details');
    }

    /**
     * @inheritDoc
     */
    _setupEvents() {

        super._setupEvents();

        this._close_btn_el.addEventListener('click', this._onClickCloseBtn.bind(this));

        if (this._remove_btn_el) {
            this._remove_btn_el.addEventListener('click', this._onClickRemoveBtn.bind(this));
        }
    }

    /**
     * @private
     */
    _onClickRemoveBtn() {

        this.lock();

        const promise = NssConfirm.confirm(
            Language.LHtml('really_unpin'),
            Language.LHtml('really_unpin_yes'),
            Language.LHtml('really_unpin_no'),
            true
        );

        promise
            .then(this._removePoster.bind(this))
            .catch(() => { /* Nix */
            })
            .finally(this.unlock.bind(this));
    }

    /**
     * @private
     */
    _removePoster() {
        this._client.removePoster(this._id, function () {
            this._fireRemove();
            this.hide();
        }.bind(this));
    }

    hide() {
        this._fireClose();
        this.destroy();
    }

    /**
     * @private
     */
    _onClickCloseBtn() {
        this.hide();
    }

    /**
     * @param {PinBoardOnPosterDetailsClosedCallback} cb
     * @return {PosterDetails}
     */
    listenOnClose(cb) {
        this._on_close_cb = cb;
        return this;
    }

    /**
     * @param {PinBoardOnPosterRemovedCallback} cb
     * @return {PosterDetails}
     */
    listenOnRemove(cb) {
        this._on_remove_cb = cb;
        return this;
    }

    /**
     * @private
     */
    _fireClose() {
        if (this._on_close_cb) {
            this._on_close_cb(this);
        }
    }

    /**
     * @private
     */
    _fireRemove() {
        if (this._on_remove_cb) {
            this._on_remove_cb(this);
        }
    }
}

export {PosterDetails};