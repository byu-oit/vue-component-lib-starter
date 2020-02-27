<template>
  <v-container>
    <v-row>
      <v-col>
        <h1 class="font-weight-light text-center">
          Welcome to Your New Vue Component Library!
        </h1>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { Component, Vue } from 'nuxt-property-decorator'

@Component
class IndexPage extends Vue {}

export default IndexPage
</script>
