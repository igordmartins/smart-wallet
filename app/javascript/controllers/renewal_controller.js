import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "renewalDate" ]

  showRenewalDate(e) {
    if (e.currentTarget.checked) {
      this.renewalDateTarget.classList.remove("d-none")
    }
    else {
      this.renewalDateTarget.classList.add("d-none")
    }
  }
}
