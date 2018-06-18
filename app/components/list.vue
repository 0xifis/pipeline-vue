<template>
  <div class="list">
    {{ name }}
    <draggable :list='cards'
               :options='{ group: "cards" }'
               @change='cardMoved'
               class='drag-area'
               >
      <card v-for='(card, cardIndex) in cards' v-bind='card' :key='cardIndex'></card>
    </draggable>
  </div>
</template>

<script>
  import card from './card.vue'
  import draggable from 'vuedraggable'

  export default {
    props: ['name', 'cards', 'id'],
    components: { card, draggable },
    methods: {
      cardMoved: function(event) {
        if (event.added == undefined) { return }
        var data = new FormData
        data.append('card[position]', event.newIndex + 1)
        data.append('card[list_id]', this.id)
        Rails.ajax({
          url: `/cards/${event.added.element.id}/move`,
          type: 'PATCH',
          data: data,
          dataType: 'json',
        })
      },
    }
  }
</script>