<template>
  <div>
    <h1>{{ title }}</h1>
  </div>
</template>

<script>
  export default {
    name: 'HelloVue',
    props: {
      title: String
    }
  }
</script>
