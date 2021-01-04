import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["messagesWrapper"]

  connect() {
    console.log("connected");
    setTimeout(() => {
      window.scrollTo(0, this.messagesWrapperTarget.scrollHeight);
    },700)
  }

}
