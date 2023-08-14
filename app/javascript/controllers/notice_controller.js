// app/javascript/controllers/toggle_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["name"]
    static classes = ["hidden"]

    hide() {
        console.debug('clicked')
        this.nameTarget.classList.add(this.hiddenClass)
    }
}
