/**
 * Stimulus controller
 * Documentation: https://stimulus.hotwired.dev/
 * read more about lifecyles at https://stimulus.hotwired.dev/reference/lifecycle-callbacks
 */

import { Controller } from "stimulus";

export default class extends Controller {

  static targets = ["content", "message", "favorite", "flag"];


  // connect() {
  //   console.log("Generated Controller Connected!");
  // }

  show_content(e) {
    // this.contentTarget.classList.toggle("d-none");
    this.messageTarget.classList.add("d-none");
    this.contentTarget.classList.remove("d-none");
  }

  flag(e) {
    this.flagTarget.disabled = true;
    this.flagTarget.classList.remove("far", "fa-flag");
    this.flagTarget.classList.add("fas", "fa-flag", "flagged");
    e.preventDefault();
  }

  favorite(e) {
    event.preventDefault();
    console.log("favorite!")
  }
}
// [...]
