<template>
  <div id="app">
    <Nav/>
    <router-view v-bind:isLogged="isLogged" />
  </div>
</template>

<script>
import Nav from "@/components/Nav.vue";
import SlidingNav from "@/components/SlidingNav.vue"
import { EventBus } from '@/event-bus.js';


export default {
  name: "App",
  data(){
    return{
      isLogged: false
    }
  },
  components: {
    SlidingNav,
    Nav
  },
  mounted(){
    EventBus.$on('login', ()=>{
      this.isLogged = true
    }
    ),
    EventBus.$on('logout', ()=>{
      this.isLogged = false
    }
    )
  }
};
</script>


<style>
@import url('https://fonts.googleapis.com/css?family=Montserrat');
#app {
  text-shadow: 0 0 2px white;
  font-family: 'Montserrat', sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
 
  background-image: url('assets/cleveland-skyline-at-night-2x3-magnet.jpg');
  background-attachment:fixed;
  background-color: aquamarine;
  height: 1000px;
  width: 100vw;
}

input {
  display: block;
  margin-left: auto;
  margin-right: auto;
  margin-top: 5px;
  margin-bottom: 5px;
  padding: 2px 5px 2px 5px;
  border: 1px solid #ddd;
  border-radius: 10px;
}
</style>
