<template>
  <div class="list">
    {{ name }}
    <card v-for='(card, cardIndex) in cards' v-bind='card' :key='cardIndex'></card>
  </div>
</template>

<script>
  import Card from './card.vue'

  export default {
    props: ['name', 'cards'],
    components: {
      Card
    }
  }
</script>