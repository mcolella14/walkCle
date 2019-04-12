<template>
<div id="addLocation">
     <gmap-autocomplete
          @place_changed="setPlace">
        </gmap-autocomplete>
        <button @click="addMarker">Add Marker</button>
    <form @submit.prevent="addLocation">
        <button type="submit" class = 'btn' >Submit New Location</button>
    </form>
     <!--<goog-map/>-->
     <gmap-map
      :center="center"
      :zoom="12"
      style="width:100%;  height: 400px;"
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
import GoogMap from "@/components/GoogMap.vue";
export default {
  
   components: {
    GoogMap

  },

  data(){
    return{
      center: { lat: 41.5038, lng: -81.6387 },
      markers: [],
      places: [],
      currentPlace: null,
      locations:[],
      location:{
        name: '',
        area: '',
        category: '',
        placeId: '',
        lat: 0,
        lng: 0

      }
    }
  },
  methods:{
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
    addLocation() {
            fetch(`${process.env.VUE_APP_REMOTE_API}/newLocation`, {
                method: 'POST',
                headers: {
                Accept: 'application/json',
                'Content-Type': 'application/json',
                },
                body: JSON.stringify(this.location),
            })
                .then((response) => {
                if (response.ok) {
                  if (this.currentPlace) {
                      
                        location.lat = this.currentPlace.geometry.location.lat();
                        location.lng = this.currentPlace.geometry.location.lng();
                        location.name = this.currentPlace.name;
                        console.log(location.name);
                      this.markers.push({ position: marker });
                      this.places.push(this.currentPlace);
                      this.center = marker;
                      this.currentPlace = null;
      }
                    this.$router.push({ path: '/home'});
                } else {
                    this.registrationErrors = true;
                }
                })

                .catch((err) => console.error(err));
    
        }, 
  }

}
</script>

<style>
#addLocation{
  color: white;
}
</style>
