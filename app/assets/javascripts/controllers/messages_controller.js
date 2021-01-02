import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    console.log(document.body.scrollHeight);
    window.scrollTo(0, document.body.scrollHeight);
  }
}
