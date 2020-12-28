import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["dropDown"]

  toggleNavbar(event) {
    this.dropDownTarget.classList.toggle("hidden");
  }
}
