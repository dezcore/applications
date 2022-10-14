<template>
  <v-container>
    <v-row>
      <v-col
        v-for="(page, i) in pages" 
        :key="i"
        cols="4"
      >
        <AppCard 
          :href="page.href"
          :name="page.name"
          :icon="page.icon"
          />
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
  import AppCard from "./../components/pages/AppCard.vue"
  
  export default {
    name: 'HomePage',
    components : {
      AppCard
    },
    data: () => ({
        pages : [
            {name : "Traffic Laws", icon : 'mdi-traffic-light', href : "/"},
            {name : "GDL", icon : 'mdi-playlist-music', href : "/"},
            {name : "Minder", icon : 'mdi-head-lightbulb-outline', href : "/"},
            {name : "MAFC", icon : 'mdi-basket', href : "/"},
        ]
    })
  }
</script>
