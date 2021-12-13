/**
 * Stimulus controller
 * Documentation: https://stimulus.hotwired.dev/
 * read more about lifecyles at https://stimulus.hotwired.dev/reference/lifecycle-callbacks
 */

import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["reply", "form"];

  connect() {
    // Anytime the controller is connected to the DOM
    // console.log("Comment Controller Connected!");
  }

  reply(e) {
    this.formTarget.classList.remove("d-none");
  }
}
