<template>
  <div id="home">
    <directions/>
    <!-- <goog-map v-bind:isLogged="isLogged" id="map"/> -->
    <about id="about"/>
   <!-- <search id="search"/>-->
  </div>
</template>

<script>
import GoogMap from "@/components/GoogMap.vue";
import About from "@/components/About.vue";
import Search from "@/components/Search.vue";
import Directions from "@/components/Directions.vue";

export default {

  props: ['isLogged'],

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
    GoogMap,
    About,
    Search,
    Directions

  },
  methods:{
     
    
        }, 
  }
 
</script>

<style>

#about{
  justify-self: flex-end;
  margin: 0 0 0 10px;

}

#map{
  display:flex;
  
  flex-wrap: nowrap;
  justify-self: center;
  margin: 0 250px 0 0;
  width: 100%;

}

#home{
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  margin: 0 5% 0 5%;
}
  
</style>

