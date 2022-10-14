<template>
  <v-app>
    <v-app-bar
      app
      color="primary"
      flat
    >
      <v-app-bar-nav-icon @click.stop="drawer = !drawer"></v-app-bar-nav-icon>
      <v-spacer></v-spacer>
      <v-responsive max-width="260">
        <v-text-field
          hide-details
          rounded
          clearable
          label="Search"
          v-model="searchField"
          append-outer-icon="mdi-magnify"
          color="black"
          background-color="white"
          @click:append-outer="setSearchField({key : 'Enter'})"
          @keydown="setSearchField"
        ></v-text-field>
      </v-responsive>
      <v-row justify="center">
        <v-btn depressed @click="()=>{}" v-if="auth">
          Logout
        </v-btn>
        <v-btn v-else
          class="white--text"
          color="purple darken-2"
          to="/login"
        >
          Login
        </v-btn>
      </v-row>
    </v-app-bar>
    <v-navigation-drawer
      v-model="drawer"
      absolute
      bottom
      permanent
      :mini-variant="true"
    >
      <v-list>
        <v-list-item link></v-list-item>
      </v-list>

      <v-list
        nav
        dense
      >
        <v-list-item-group
          active-class="deep-purple--text text--accent-4"
        >
          <v-list-item link v-for="page in pages" :key="page.name" :to="page.hrf"  @click.stop="mini = false">
            <v-list-item-icon>
              <v-icon>{{page.icon}}</v-icon>
            </v-list-item-icon>
            <v-list-item-title>{{page.name}}</v-list-item-title>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>
    <v-main>
      <div id="app">
        <v-container>
          <router-view></router-view>
        </v-container>
      </div>
    </v-main>
  </v-app>
</template>

<script>
export default {
  name: 'App',
  data: () => ({
    auth : false,
    drawer : false,
    searchField : '',
    pages : [
      {name : "Button1", icon : 'mdi-traffic-light', href : "/"},
      {name : "Button2", icon : 'mdi-playlist-music', href : "/"}
    ]
  }),
  methods : {
    setSearchField : function(key) {
      console.log("setSearchField : ", key)
    }
  }
};
</script>
