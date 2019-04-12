<template>
  <div class="home">

    <goog-map/>
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
  color: white;
  text-shadow: 0 0 2px white;
}

#about{
  color: white;
}

.home{
  display: flex;
  justify-content: space-evenly;
  align-items: center;
}
  
</style>

