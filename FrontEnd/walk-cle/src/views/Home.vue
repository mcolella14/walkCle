<template>
  <div id="home">
    <h1 class="title">WalkCLE&#8482;</h1>
    <goog-map v-bind:isLogged="isLogged" id="map"/>
    <about id="about"/>
    <div v-if="!isLogged" id="hide">
    <div id="info" v-on:click="isLogged">
      <h1>WalkCLE&#8482;</h1>
      <p>Welcome to Cleveland, Ohio! Whether you are an avid sports fan, love great entertainment, or even 
        better food then you've come to the right place! Not sure where to start? No problem, We've 
        cultivated some of the top spots in town for you. From historical West Side Market in Ohio City,
        to one of the most visited art museums in the US, the Cleveland Art Museum. Cleveland has it all! 
        Take a look around WalkCLE&#8482;, and start discovering what Cleveland has to offer. 
        Looking to check out a particular region? First time to WalkCle&#8482;? <router-link id="about-register" :to="{ name: 'Register' }">Register</router-link> 
        or simply <router-link id = "about-login" :to="{ name: 'Login' }">Login</router-link> 
        to unlock ablility to filter area or even by activity then tab on over directions, drop in your 
        next stop and away you go! After you arrive make sure to check in your location. 
        Check in to enough spots around Cleveland to unlock your WalkCLE&#8482; badges.</p> 
    </div>
    </div>
  </div>
</template>

<script>
import GoogMap from "@/components/GoogMap.vue";
import About from "@/components/About.vue";




export default {

  props: ['isLogged', 'locations'],

  data(){
    return{
      //locations: []
      isLogged: false
        
    }
  },

  components: {
    GoogMap,
    About,
    

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
  background-color: #001244;
  border: 1px solid black;
  opacity: .85;
  width: 65%;
  margin-left: auto;
  margin-right: auto;
  margin-bottom: 10%;
}

#about-login{
  color:red;
  text-decoration: none;
}

#about-login:hover{
  background-color: white;
  border-radius: 5px;
  padding: 3px;
}

#about-register{
  color:red;
  text-decoration: none;
}

#about-register:hover{
  background-color: white;
  border-radius: 5px;
  padding: 3px;
}
.title{
  color:white;
  margin-left: auto;
  margin-right: auto;
   text-shadow:
		-2px -2px 0 #000,
		2px -2px 0 #000,
		-2px 2px 0 #000,
		2px 2px 0 #000;
}
  
</style>

