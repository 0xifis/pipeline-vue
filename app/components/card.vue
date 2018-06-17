<template>
  <div class='card card-body'>
    <h3 class='card-title'> {{ listing.postcode }} </h3>
    <p class="card-subtitle"> {{ listing.tenant }} </p>
  </div>
</template>

<script>
  export default {
    props: ['listing']
  }
</script>
