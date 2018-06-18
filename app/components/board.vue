<template>
  <draggable id='app'
             :list='lists'
             :options='{group: "lists"}'
             @end='listMoved'
             class='lists-container'>
    <list v-for='(list, listIndex) in original_lists' v-bind='list' :key='listIndex'></list>
    <!-- <a href='/lists/new' slot='footer' class='list new-list'> New List </a> -->
  </draggable>
</template>

<script>
import draggable from 'vuedraggable'
import list from './list.vue'

export default {
  props: ['original_lists'],
  components: { list, draggable },
  data: function() {
    return {
      lists: this.original_lists,
    }
  },
  methods: {
    listMoved: function(event) {
      console.log(event)
      console.log(this.lists)
      var data = new FormData
      data.append('list[position]', event.newIndex + 1)
      Rails.ajax({
        url: `/lists/${this.lists[event.newIndex].id}/move`,
        type: 'PATCH',
        data: data,
        datatype: 'json',
      })
    }
  },
}
</script>
