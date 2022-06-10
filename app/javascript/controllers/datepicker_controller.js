import { Controller } from "stimulus";
import flatpickr from "flatpickr";
export default class extends Controller {
  connect() {
    flatpickr(".datepicker");
  };
}
