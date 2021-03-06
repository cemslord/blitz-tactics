import Backbone from 'backbone'

import d from '../../../dispatcher.ts'

export default class Background extends Backbone.View {

  get el() {
    return document.querySelector(`body`)
  }

  initialize() {
    this.listenForEvents()
  }

  listenForEvents() {
    this.listenTo(d, `level:unlocked`, () => {
      this.el.classList.add(`unlocked`)
    })
  }
}
