<template>
  <div id="app">
    <div id="nav">
      <Nav/>
    </div>
    <router-view/>
  </div>
</template>

<script>

import Nav from '@/components/Nav.vue'
export default {
  name: 'nav',
  components: {
    Nav
  }
}
</script>


<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #6f263d;
  background-image: url('assets/cleveland-skyline-at-night-2x3-magnet.jpg');
  background-color: aquamarine;
  height: 100vh;
}
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
}

#nav a:link {
  color: #6f263d;
}

#nav a:visited{
  color: #6f263d;
}

#nav a.router-link-exact-active {
  color: #6f263d;
}

input{
  display: block;
  margin-left: auto;
  margin-right: auto;
  margin-top: 5px;
  margin-bottom: 5px;
  padding: 2px 5px 2px 5px;
  border: 1px solid #DDD;
  border-radius: 10px;
}
</style>
