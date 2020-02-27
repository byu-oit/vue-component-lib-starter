<template>
  <v-container>
    <v-row>
      <v-col>
        <h1>Hello {{ name }}!</h1>
      </v-col>
    </v-row>
    <v-row>
      <v-col>
        <v-text-field v-model="name" dense hide-details flat />
      </v-col>
    </v-row>
  </v-container>
</template>

<script lang="ts">
import { Component, Vue } from 'nuxt-property-decorator'

@Component
class Example extends Vue {
  name = 'World'
}

export default Example
</script>
