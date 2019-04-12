import Vue from 'vue'
import App from './App.vue'
import router from './router'
import * as VueGoogleMaps from "vue2-google-maps";

Vue.config.productionTip = false

Vue.use(VueGoogleMaps, {
  load: {
    key: "AIzaSyAJC3qMxUv2ECCVn76BOxsGi1n5vhu072w",
    libraries: "places" // necessary for places input
  }
});
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
