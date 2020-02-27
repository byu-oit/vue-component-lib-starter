<template>
  <example />
</template>

<script>
import { Component, Vue } from 'nuxt-property-decorator'
import Example from '~/components/Example.vue'

@Component({
  components: {
    Example
  }
})
class ExamplePage extends Vue {}

export default ExamplePage
</script>
