// app/javascript/controllers/toggle_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["element"]
    static classes = ["hidden"]

    toggleClass() {
        console.debug(this.hiddenClass)
        this.elementTarget.classList.toggle(this.hiddenClass)
    }
}
