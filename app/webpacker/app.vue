<template>
  <div id='app' class='lists-container'>
    <div v-for='(list, listIndex) in original_lists' class='list'>
      {{ list.name }}
      <card v-for='(card, cardIndex) in list.cards' v-bind='card' :key='listIndex-cardIndex'></card>
    </div>
    <a href='/lists/new' class='list new-list'> New List </a>
  </div>
</template>

<script>
import Card from '../components/card.vue'

export default {
  props: ['original_lists'],
  components: {
    Card
  }
}
</script>

