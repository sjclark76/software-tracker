
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "name", "output" ]

  greet() {
    alert('clicked')
    this.outputTarget.textContent =
        `Hello, ${this.nameTarget.value}!`
  }
}
