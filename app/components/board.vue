<template>
  <div id='app' class='lists-container'>
    <list v-for='(list, listIndex) in original_lists' v-bind='list' :key='listIndex'></list>
    <a href='/lists/new' class='list new-list'> New List </a>
  </div>
</template>

<script>
import List from './list.vue'

export default {
  props: ['original_lists'],
  components: {
    List
  }
}
</script>

