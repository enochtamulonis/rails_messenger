import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    console.log("new message")
    window.scrollTo(0, document.querySelector("#allMessages").scrollHeight);
  }
}
