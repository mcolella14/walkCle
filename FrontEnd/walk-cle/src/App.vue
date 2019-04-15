<template>
  <div id="app">
    <sliding-nav/>
    
    <router-view/>
  </div>
</template>

<script>
import Nav from "@/components/Nav.vue";
import SlidingNav from "@/components/SlidingNav.vue"


export default {
  name: "App",
  components: {
    SlidingNav
  }
};
</script>


<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
 
  background-image: url('assets/cleveland-skyline-at-night-2x3-magnet.jpg');
  background-color: aquamarine;
  height: 100%;
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
