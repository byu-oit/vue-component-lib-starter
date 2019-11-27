<template>
  <v-container>
    <v-row justify="center">
      <v-spacer></v-spacer>
      <v-col cols="8">
        <v-card>
          <v-card-title class="headline">
            Welcome to the {{ title }}
          </v-card-title>
          <v-card-text>
            <v-card flat>
              <v-card-title>Introduction</v-card-title>
              <v-card-text>
                <p>In the menu to the left (click <v-icon>mdi-menu</v-icon>), you will notice a few headings. These headings organize our components according to the Atomic Design pattern.</p>
                <p><strong>Atomic Design</strong> splits components in several categories among which are atoms, molecules, & organisms.</p>
                <ul>
                  <li><strong>Atoms</strong> are the smallest of components in an application. They cannot be split into smaller pieces. This could be things like buttons, input fields, or text areas, etc. An atom on its own can't do anything but display information.</li>
                  <li><strong>Molecules</strong> are built out of our atoms and perform some extended functionality. For example: an input and label atom may be combined into an "input molecule". The atoms may now interact with some functionality that the "molecule" component provides (e.g. clicking on the label focuses on the input field).</li>
                  <li><strong>Organisms</strong> are composed of molecules and may provide functionality to the end user. For example: our input molecule combined with a button may provide a login feature which becomes the "login organism".</li>
                </ul>
                <br>
                <span>While building components:</span>
                <ul>
                  <li><strong>DO NOT</strong> ask "How can I break make this component more abstract?"</li>
                  <li><strong>DO</strong> ask "What features does my project/team require?"</li>
                  <li><strong>DO</strong> ask "Where are the overlaps in the components we will provide?"</li>
                </ul>
                <p>In summary, it can be easy to try to abstract too much and end up creating a feature that is never used.</p>
              </v-card-text>
            </v-card>
            <v-card flat>
              <v-card-title>Getting Started</v-card-title>
              <v-card-text>
                <ol>
                  <li>Create a new vue file in the pages directory under the appropriate component category (You may copy the atoms/example to get started).</li>
                  <li>Add a corresponding page in the sections property of the layout/default.vue page (follow the example that's already there).</li>
                  <li>Add a new vue file for your component in the components directory under the appropriate component category.</li>
                </ol>
              </v-card-text>
            </v-card>
            <v-card flat>
              <v-card-title>References</v-card-title>
              <v-card-text>
                <div v-for="reference of references" :key="reference.link">
                  <a :href="reference.link">{{ reference.text }}</a>
                </div>
              </v-card-text>
            </v-card>
          </v-card-text>
        </v-card>
      </v-col>
      <v-spacer></v-spacer>
    </v-row>
  </v-container>
</template>

<script>
import pkg from '../package'
export default {
  data () {
    return {
      title: pkg.description,
      references: [
        {
          text: 'Nuxt Documentation',
          link: 'https://nuxtjs.org/'
        },
        {
          text: 'Nuxt GitHub',
          link: 'https://github.com/nuxt/nuxt.js'
        }
      ]
    }
  }
}
</script>
