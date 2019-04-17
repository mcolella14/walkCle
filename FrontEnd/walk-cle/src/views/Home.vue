<template>
  <div id="home">
    
    <goog-map v-bind:isLogged="isLogged" id="map"/>
    <about id="about"/>
    <search id="search"/>
    <div id="info">
      <h1>WalkCLE</h1>
      <p>Welcome to Cleveland, Ohio! Whether you are an avid sports fan, love great entertainment, or even 
        better food you've come to the right place! Not sure where to start? No problem, We've 
        cultivated some of the top spots in town for you. From historical West Side Market in Ohio, city
        to one of the most visited art museums in the US at the Cleveland Art Museum, Cleveland has it all! 
        Take a look around WalkCle, and start discovering what Cleveland really has to offer. 
        Looking to check out a particular region, <router-link id = "about-login" :to="{ name: 'Login' }">Login</router-link> 
        to unlock ablility to filter area or even by activity then tab on over directions, drop in your 
        next stop and away you go!
        .....(next features added).......</p> 
    </div>
  </div>
</template>

<script>
import GoogMap from "@/components/GoogMap.vue";
import About from "@/components/About.vue";
import Search from "@/components/Search.vue";


export default {

  props: ['isLogged', 'locations'],

  data(){
    return{
      //locations: []
        
    }
  },

  components: {
    GoogMap,
    About,
    Search,
    

  },
  methods:{
     
    
        }, 
  }
 
</script>

<style>

#about{
  justify-self: flex-end;


}

#map{
  display:flex;
  flex-wrap: nowrap;
  justify-self: center;
  width: 100%;
}

#home{
  display: flex;
  flex-direction: column;
  align-items: flex-start;
}

#info h1{
  color: white;
  text-align: center;
  margin-left: auto;
  margin-right: auto;
  text-shadow:
		-2px -2px 0 #000,
		2px -2px 0 #000,
		-2px 2px 0 #000,
		2px 2px 0 #000;
}

#info p{
  color: white;
  text-decoration: none;
  font-size: 20px;
  font-weight: bold;
  text-shadow:
		-1px -1px 0 #000,
		1px -1px 0 #000,
		-1px 1px 0 #000,
		1px 1px 0 #000;
  padding: 0 50px 20px 50px;
  line-height: 1.2;
}

#info {
  background-color: darkred;
  border: 1px solid black;
  opacity: .85;
  width: 65%;
  margin-left: auto;
  margin-right: auto;
}

#about-login{
  color:blue;
  text-decoration: none;
}

#about-login:hover{
  background-color: white;
  border-radius: 5px;
  padding: 3px;
}
  
</style>

