import { Controller } from "stimulus";
export default class extends Controller {
  static targets = ["form"];


  inputmask = (e) => {
    const input = e.currentTarget;
    const field = input.dataset.mask;
    console.log(input, field)
    if (field !== undefined) {
      input.value = this.masks(field, input.value);
    }
  };



  masks = (type, value) => {
    switch (type) {
      case "cpf":
        return value
          .replace(/\D/g, "")
          .replace(/(\d{3})(\d{3})(\d{3})(\d)/, "$1.$2.$3-$4")
          .replace(/(\d{3})(\d{3})(\d)/, "$1.$2.$3")
          .replace(/(\d{3})(\d)/, "$1.$2");
        break;
    }
  };
}
