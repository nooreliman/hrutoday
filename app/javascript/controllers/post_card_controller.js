/**
 * Stimulus controller
 * Documentation: https://stimulus.hotwired.dev/
 * read more about lifecyles at https://stimulus.hotwired.dev/reference/lifecycle-callbacks
 */

import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["content", "message", "flagnum"];

  // connect() {
  //   console.log("Generated Controller Connected!");
  // }

  show_content(e) {
    // this.contentTarget.classList.toggle("d-none");
    this.messageTarget.classList.add("d-none");
    this.contentTarget.classList.remove("d-none");
  }

  update_flags(e) {
   const url = `${e.currentTarget.dataset.link}`;
    fetch(url, {
      method: "PUT",
      headers: { Accept: "text/html" },
    })
    .then(response => response.text())
    .then((data) => {
      this.flagnumTarget.html(data);
    });
}
  }
