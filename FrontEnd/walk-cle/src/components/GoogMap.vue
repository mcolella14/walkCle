<template>
  <div>
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
    <gmap-map
      :center="center"
      :zoom="11"
      style="width:50%;  height: 500px;"
    >
      <gmap-marker
        :key="index"
        v-for="(m, index) in markers"
        :position="m.position"
        @click="center=m.position"
      ></gmap-marker>
    </gmap-map>
  </div>
</template>

<script>
export default {
  name: "Googmap",
  data() {
    return {
      
      center: { lat: 41.5038, lng: -81.6387 },
      markers: [],
      places: [],
      currentPlace: null
    };
  },

  mounted() {
    this.geolocate();
  },

  methods: {
    // receives a place object via the autocomplete component
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
    geolocate() {
      console.log('inside geolocate');
      navigator.geolocation.getCurrentPosition((position) => {
        this.center = {
          lat: position.coords.latitude,
          lng: position.coords.longitude
        };
      },
      (error) => {
        console.log(error);
      }
      );
    }
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



