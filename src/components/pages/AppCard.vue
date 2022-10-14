<template>
<v-card 
  :to="href"
  color="#952175"
>
<div class="d-flex flex-no-wrap justify-space-between">
  <div>
    <v-card-title
      class="text-h5"
      v-text="name"
    ></v-card-title>    
    <v-card-subtitle v-text="name"></v-card-subtitle>
    <v-card-actions>
      <v-btn
        class="ml-2 mt-3"
        fab
        icon
        height="40px"
        right
        width="40px"
      >
        <v-icon>{{icon}}</v-icon>
      </v-btn>
    </v-card-actions>
  </div>
  <v-avatar
    class="ma-3"
    size="125"
    tile
  >
    <v-img :src="'https://cdn.vuetifyjs.com/images/cards/halcyon.png'"></v-img>
  </v-avatar>
</div>
</v-card>
</template>

<script>
  export default {
    name: 'AppCard',
    props : {
      href : {
        type : String,
        default : ()=>{return '/'}
      },
      name : {
        type : String,
        default : ()=>{return 'Name'}
      },
      icon : {
        type : String,
        default : ()=>{return 'mdi-playlist-music'}
      },
    },
    data: () => ({})
  }
</script>
