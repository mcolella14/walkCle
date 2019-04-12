<template>
  <div id="container">
    <div>
      <h2>Search locations and add a pin</h2>
      <label>
       
      </label>
      <br/>

    </div>
    <br>
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
       @click="center={ lat: m.latitude, lng: m.longitude }"
      ></gmap-marker>
    </gmap-map>
  </div>
</template>

<script>

import axios from 'axios';
import {gmapApi}  from "vue2-google-maps";

export default {

  name: "Googmap",
  data() {
    return {
      center: { lat: 41.5038, lng: -81.6387 },
      markers: [],
      places: [],
      currentPlace: null,
      locations:[],
    };
  },
  created() {

    this.initMarkers();
    
  },
  mounted() {

   console.log(window.google);
  },

  methods: {
    centerMarker(m){
      this.center = m.position;

    },
    initMarkers(){
      console.log('hello there');
    axios.get(process.env.VUE_APP_REMOTE_API + '/').then(response =>{
      this.locations = response.data;
      console.log(this.locations);
    })
    .then(response => {
      console.log('after the axios get')
    
     
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
  color: white;
}
 #map{
  margin-left:auto;
  margin-right: auto;
  margin-top: auto;
  margin-bottom: 20px;
 width: 500px;
 height: 350px;
 opacity: 0.8;
 transition: 5s;
 
} 
#map:hover{
  opacity: 1;
  width: 700px;
  height: 500px;
  transition: 0.5s;
}
/* #container{
  height: 190%;
  width: 200%
} */
</style>



