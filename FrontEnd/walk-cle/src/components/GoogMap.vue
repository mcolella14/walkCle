<template>
  <div id="container">
    <div>
      <h2>Search locations and add a pin</h2>
      <label>
        <gmap-autocomplete
          @place_changed="setPlace">
        </gmap-autocomplete>
        <button @click="addMarker">Add</button>
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
        @click="center=m.position"
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
    // receives a place object via the autocomplete component
    initMarkers(){
      console.log('hello there');
    axios.get(process.env.VUE_APP_REMOTE_API + '/').then(response =>{
      this.locations = response.data;
      console.log(this.locations);
    })
    .then(response => {
      console.log('after the axios get')
    
      this.locations.forEach((element) => {
        



        let request = {
          placeId: element.place_id,
          fields:['name', 'rating,', 'formatted_phone_number', 'geometry']
        };
      console.log(new VueGoogleMaps.gmapApi)
        //let mappy = new VueGoogleMaps.gmapApi.maps.Map(document.getElementById('map'));
        let service = window.google.maps.places.PlacesService(this.$refs.myMap);
        service.getDetails(request, callback);

        function callback(place, status){
          console.log('before');
          console.log(this.markers);
        if(status == google.maps.places.PlacesServiceStatus.OK){
            const marker = {
            lat: place.geometry.location.lat(),
            lng: place.geometry.location.lng()
          };
          this.markers.push({ position: marker });
          console.log(this.markers)
          this.places.push(place);
          this.center = marker;
          this.currentPlace = null;
          
        }
        console.log('after');
      console.log(this.markers);
        }
      })
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
// We’re creating a gmap-autocomplete and a gmap-map (with children gmap-markers). Initially, 
// the map is created centered on Montreal. After the instance is mounted(), we call geolocate and 
// re-center.

// Once a user enters a search term and makes a selection from the autocomplete dropdown, the 
// gmap-autocomplete calls setPlace. This selection is then stored in currentPlace. When the add 
// button is clicked, we call addPlace which stores the marker location in markers, triggering the 
// gmap-map (and subsequently gmap-markers) to update. We’re also updating center to the position of 
// the last marker. Additionally, we’re storing each place’s full place object in the places property. 
// This will allow any additional data returned from the automplete query to be used in this component 
// or any child components, as needed.
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
 
} 
#map:hover{
  opacity: 1;
  width: 700px;
  height: 500px;
}
/* #container{
  height: 190%;
  width: 200%
} */
</style>



