import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = ["submit"]
  submitForm() {
    this.submitTarget.click();
    console.log("hello");
  }
}
