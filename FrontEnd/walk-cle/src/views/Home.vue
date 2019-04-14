<template>
  <div id="home">

    <goog-map id="map"/>
    <about id="about"/>
  </div>
</template>

<script>
import GoogMap from "@/components/GoogMap.vue";
import About from "@/components/About.vue";


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
    GoogMap,
    About

  },
  methods:{
     
    
        }, 
  }
 
</script>

<style>
h2{
  text-shadow: 0 0 2px white;
}

#about{
  justify-self: flex-end;
  margin: 0 0 0 10px;
}

#map{
  justify-self: flex-start;
  margin: 0 10px 0 0;
}

#home{
  display: flex;
  align-items: flex-end;
  margin: 0 5% 0 5%;
}
  
</style>

