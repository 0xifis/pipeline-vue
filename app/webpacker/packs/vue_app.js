/* eslint no-console: 0 */

import Vue from 'vue/dist/vue.esm'
import App from '../app.vue'

document.addEventListener('turbolinks:load', () => {
  const el = document.querySelector('#board')
  if(el != null) {
    const app = new Vue({
      el,
      data: {
        lists: JSON.parse(el.dataset.lists)
      },
      template: "<App :original_lists='lists' />",
      components: { App }
    })
  }
})
