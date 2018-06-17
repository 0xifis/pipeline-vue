/* eslint no-console: 0 */
import Vue from 'vue/dist/vue.esm'
import Board from '../../components/board.vue'

document.addEventListener('turbolinks:load', () => {
  const el = document.querySelector('#board')
  if(el != null) {
    const app = new Vue({
      el,
      data: {
        lists: JSON.parse(el.dataset.lists)
      },
      template: "<Board :original_lists='lists' />",
      components: { Board }
    })
  }
})
