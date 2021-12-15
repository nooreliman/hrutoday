/**
 * Stimulus controller
 * Documentation: https://stimulus.hotwired.dev/
 * read more about lifecyles at https://stimulus.hotwired.dev/reference/lifecycle-callbacks
 */

import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ["content", "message", "favorite", "flag"];

  // connect() {
  //   console.log(this.formTargets);
  // }

  show_content(e) {
    // this.contentTarget.classList.toggle("d-none");
    this.messageTarget.classList.add("d-none");
    this.contentTarget.classList.remove("d-none");
  }

  flag(e) {
    // const url = this.flagTarget.dataset.link;
    // fetch(url)
    //   .then((res) => res.json())
    //   .then((data) => console.log(data));
    e.preventDefault();
    this.flagTarget.disabled = true;
    this.flagTarget.classList.remove("far", "fa-flag");
    this.flagTarget.classList.add("fas", "fa-flag", "flagged");
    // }
    // user clicks confirm && the result is successful
  }

  favorite(e) {
    e.preventDefault();
    if (this.favoriteTarget.classList.value.includes("fas fa-bookmark")) {
      this.favoriteTarget.classList.remove("fas", "fa-bookmark");
      this.favoriteTarget.classList.add("far", "fa-bookmark");
    } else {
      this.favoriteTarget.classList.remove("far", "fa-bookmark");
      this.favoriteTarget.classList.add("fas", "fa-bookmark");
    }
  }
}
