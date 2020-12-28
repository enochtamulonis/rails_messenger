import { Controller } from 'stimulus'
import { Autocomplete } from 'stimulus-autocomplete'

application.register('autocomplete', Autocomplete)

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}
