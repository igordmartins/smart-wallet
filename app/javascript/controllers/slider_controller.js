import { Controller } from "stimulus";
// yourScript.js
import { tns } from "tiny-slider";
export default class extends Controller {
  connect() {
    var slider = tns({
      container: ".my-slider",
      items: 1,
      slideBy: "page",
      mouseDrag: true,
      swipeAngle: false,
      speed: 400
    });
  }
}
