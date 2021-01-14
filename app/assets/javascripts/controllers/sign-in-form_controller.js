import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = ["submitBtn", "input"]
  static classes = ["success", "danger"]
  static values = {characterCount: Number}

  inputText(event) {
    if (event.target.value != "") {
      this.submitBtnTarget.classList.remove("hidden")
      this.inputTarget.classList.remove("border-indigo-900")
    } else {
      this.submitBtnTarget.classList.add("hidden")
      this.inputTarget.classList.add("border-indigo-900")
    }
    if (event.target.value.length > this.characterCountValue) {
      this.inputTarget.classList.remove(this.successClass)
      this.inputTarget.classList.add(this.dangerClass)
      this.submitBtnTarget.classList.remove(this.successClass)
      this.submitBtnTarget.classList.add(this.dangerClass)
    } else {
      this.inputTarget.classList.remove(this.dangerClass)
      this.inputTarget.classList.add(this.successClass)
      this.submitBtnTarget.classList.add(this.successClass)
      this.submitBtnTarget.classList.remove(this.dangerClass)
    }
  }
}
