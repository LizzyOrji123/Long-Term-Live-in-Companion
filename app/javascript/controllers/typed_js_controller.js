import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Long term live-in companions required in Europe by our very successful intelligent clients"],
      typeSpeed: 50,
      loop: true
    })
  }
}
