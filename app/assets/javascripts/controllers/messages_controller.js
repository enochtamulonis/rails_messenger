import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["messagesWrapper"]

  connect() {
    console.log("connected");
    setTimeout(() => {
      window.scrollTo(0, this.messagesWrapperTarget.scrollHeight);
      setInterval(() => {
        if ((window.innerHeight + window.scrollY) != document.body.offsetHeight) {
          window.scrollTo(0, this.messagesWrapperTarget.scrollHeight);
        }
      },300)
    },700)
    // setInterval(() => {
    //   console.log(document.body.scrollTop);
    //   if (this.messagesWrapperTarget.scrollTop != this.messagesWrapperTarget.scrollHeight) {
    //     window.scrollTo(0, this.messagesWrapperTarget.scrollHeight);
    //     console.log("changed scroll height");
    //   }
    // },1000)
  }

}
