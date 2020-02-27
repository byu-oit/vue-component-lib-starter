<template>
  <v-app>
    <v-navigation-drawer v-model="drawer" fixed app>
      <h1 class="font-weight-light text-center my-5">
        Components
      </h1>
      <v-list>
        <v-list-item
          v-for="(item, i) in items"
          :key="i"
          :to="item.path"
          router
          exact
        >
          <v-list-item-action>
            <v-icon>mdi-minus</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title v-text="item.name" class="font-weight-light" />
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
    <v-app-bar fixed app>
      <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
      <n-link to="/">
        <v-toolbar-title v-text="title" />
      </n-link>
    </v-app-bar>
    <v-content>
      <v-container>
        <nuxt />
      </v-container>
    </v-content>
    <v-footer app>
      <span>&copy; 2019</span>
    </v-footer>
  </v-app>
</template>

<script>

function isNotIndex (route) {
  return route.name !== 'index'
}

export default {
  name: 'DefaultLayout',
  data: () => ({
    title: 'Vue Component Library Starter',
    drawer: false
  }),
  computed: {
    items () {
      return this.$router.options.routes.filter(isNotIndex)
    }
  }
}
</script>

<style scoped>
  a {
    text-decoration: none;
  }
</style>
