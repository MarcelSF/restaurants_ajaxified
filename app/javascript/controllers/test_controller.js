import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "div" ]

  connect() {
    setInterval(this.change_text, 2000);
  }

  change_text(){
    const texts = ["Changed text", "LOOK AT ME!", "Super cool, right?"];
    this.divTarget.innerText = texts[Math.floor(Math.random() * texts.length)];;
  }
}
