import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["button"];

  intro(e) {
    localStorage.hasRunIntro = 0;
  }
}
