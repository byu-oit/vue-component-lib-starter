<template>
  <v-container>
    <v-row justify="center">
      <example />
    </v-row>
  </v-container>
</template>
<script lang="ts">
import { Component, Vue } from 'nuxt-property-decorator'
import Example from '~/components/atoms/Example.vue'

@Component({
  components: {
    Example
  }
})
export default class ExamplePage extends Vue {
  private title = 'Hello World'
}
</script>
