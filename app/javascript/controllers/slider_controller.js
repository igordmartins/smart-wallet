import { Controller } from "stimulus";
// yourScript.js
import { tns } from "tiny-slider";
export default class extends Controller {
  static values = { id: Number }
  connect() {
    var slider = tns({
      container: `.my-slider-${this.idValue}`,
      items: 1,
      slideBy: "page",
      mouseDrag: true,
      swipeAngle: false,
      speed: 400,
      axis: "horizontal",
      loop: false
    });
  }
}
