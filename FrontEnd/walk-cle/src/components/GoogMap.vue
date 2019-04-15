<template>
  <div id="container">
   <search v-bind:locations = "locations"/>
    <gmap-map id="map"
      :center="center"
      :zoom="11"
      style=""
      ref="myMap"
    >
     <gmap-marker
        :key="index"
        v-for="(m, index) in locations"
        :position="{ lat: m.latitude, lng: m.longitude }"
        @click="openWindow(m)"
       >
       </gmap-marker>
       
      <gmap-info-window @click="showInfo" :position="infoWindow" :opened="windowOpen" @closeclick="closeWindow()"> 
          <div id="info"><div id="infoBoxName">{{this.infoName}}</div><br>Click for more info</div>
        </gmap-info-window>
    </gmap-map>

  </div>
</template>

<script>

import axios from 'axios';
import { EventBus } from '@/event-bus.js';
import Search from '@/components/Search.vue';
export default {

  name: "Googmap",
  data() {
    return {
      infoWindow:{},
      windowOpen: false,
      center: { lat: 41.5038, lng: -81.6387 },
      markers: [],
      places: [],
      currentPlace: null,
      locations:[],
      infoName: ''
    };
  },
  components: {
    Search
  },
  created() {

    this.initMarkers();
    
  },
  mounted() {

  },

  methods: {
    showInfo(){
      

    },
    openWindow(m){
      this.infoWindow = { lat: m.latitude, lng: m.longitude }
      this.windowOpen = true;
      this.infoName = m.name;
      this.selectedPlace = m;
      EventBus.$emit('display-info', m)
      
    },

    closeWindow(){
      this.windowOpen = false;
    },
  
    centerMarker(m){
      this.center = m.position;

    },
    initMarkers(){
    axios.get(process.env.VUE_APP_REMOTE_API + '/').then(response =>{
      this.locations = response.data;
    })
    },
    setPlace(place) {
      this.currentPlace = place;
    },
    addMarker() {
      if (this.currentPlace) {
        const marker = {
          lat: this.currentPlace.geometry.location.lat(),
          lng: this.currentPlace.geometry.location.lng()
        };
        this.markers.push({ position: marker });
        this.places.push(this.currentPlace);
        this.center = marker;
        this.currentPlace = null;
      }
    },
    

    // geolocate() {
    //   console.log('inside geolocate');
    //   navigator.geolocation.getCurrentPosition((position) => {
    //     this.center = {
    //       lat: position.coords.latitude,
    //       lng: position.coords.longitude
    //     };
    //   },
    //   (error) => {
    //     console.log(error);
    //   }
    //   );
    // }
  }
};

</script>
<style>
#container{
}
 #map{
  color: white;
  margin-left:auto;
  margin-right: auto;
  margin-top: auto;
  margin-bottom: 20px;
 width: 700px;
 height: 500px;
 /*transition: 5s;*/
 
} 
#map:hover{
  /* opacity: 1;
  width: 700px;
  height: 500px;
  transition: 0.5s; */
}
#info{
  color: black;
}

#infoBoxName{
  font-weight: bold;
  font-size: 150%;
}
</style>



