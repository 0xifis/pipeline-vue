/* eslint no-console: 0 */

import Vue from 'vue'
import App from '../app.vue'

document.addEventListener('turbolinks:load', () => {
  const el = document.body.appendChild(document.createElement('#boards'))
  const app = new Vue({
    el,
    render: h => h(App)
  })

  console.log(app)
})

