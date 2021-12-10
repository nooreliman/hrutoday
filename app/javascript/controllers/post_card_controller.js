/**
 * Stimulus controller
 * Documentation: https://stimulus.hotwired.dev/
 * read more about lifecyles at https://stimulus.hotwired.dev/reference/lifecycle-callbacks
 */

import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["content", "message", "favorite"];

  // connect() {
  //   console.log("Generated Controller Connected!");
  // }

  show_content(e) {
    // this.contentTarget.classList.toggle("d-none");
    this.messageTarget.classList.add("d-none");
    this.contentTarget.classList.remove("d-none")
  }

  favorite(e) {
    event.preventDefault();
    console.log("favorite!")
  }
}
// [...]
