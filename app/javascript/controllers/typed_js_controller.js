import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js'
// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    // console.log('hello alexis and kelly')
    new Typed(this.element, {
      strings: ["Echange de services et de matériel", "Entre particuliers"],
      typeSpeed: 50,
      loop: true
    })
  }
}
