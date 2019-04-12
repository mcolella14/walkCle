<template>
  <div class="home">
    <!-- <h2 v-for="location in locations" :key="location.name">{{location.name}}</h2> -->

    <goog-map/>
  </div>
</template>

<script>
import GoogMap from "@/components/GoogMap.vue";


export default {

  data(){
    return{
      locations: []
        
    }
  },
  created(){
    fetch(`${process.env.VUE_APP_REMOTE_API}/`, {
      method: 'GET',
      headers: {
      }
    })
      .then((response) => {
        return response.json();
      })
      .then((data) => {
        this.locations = data;
      })
      .catch((err) => console.error(err));
    
    

  },

  components: {
    GoogMap
  },
  methods:{
     
    
        }, 
  }
 
</script>

<style>
h2{
  color: white;
  text-shadow: 0 0 2px white;
}
  
</style>

