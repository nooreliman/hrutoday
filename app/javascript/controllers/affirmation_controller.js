/**
 * Stimulus controller
 * Documentation: https://stimulus.hotwired.dev/
 * read more about lifecyles at https://stimulus.hotwired.dev/reference/lifecycle-callbacks
 */

import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["face"];

  connect() {
    // Anytime the controller is connected to the DOM
    console.log("connected");
    setTimeout(() => {
      this.faceTargets.forEach((face) => {
        let rand = Math.floor(Math.random() * 61) - 30;
        // console.log(rand);
        face.style.transform = `translateX(${rand}%)`;
      });
    }, 500);
  }
}
