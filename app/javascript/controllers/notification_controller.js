import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["item", "mark"];

  connect() {
    // Anytime the controller is connected to the DOM
    // console.log(this.itemTarget);
  }

  mark_as_read(e) {
    // e.preventDefault();
    // this.formTarget.classList.remove("d-none");
    const url = this.markTarget.dataset.link
    
    fetch(url, {
      headers: {
        "Accept": "application/json"
      }
    })
      .then(res => res.json())
      .then(data => {
        const notification = data.notification
        const isRead = notification.read_at;

        if(isRead) {
          this.itemTarget.classList.remove("unread")
          this.markTarget.classList.add("d-none")
        }
      })
  }
}
