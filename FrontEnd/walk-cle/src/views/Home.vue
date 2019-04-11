<template>
  <div class="home">
    <goog-map/>
  </div>
</template>

<script>
import GoogMap from "@/components/GoogMap.vue";


export default {

  data(){
    return{
      locations: []
        
    }
  },

  components: {
    GoogMap
  },
  methods:{
     getLocations() {
            fetch(`${process.env.VUE_APP_REMOTE_API}/`, {
                method: 'GET',
                headers: {
                Accept: 'application/json',
                'Content-Type': 'application/json',
                },
                body: JSON.stringify(this.user),
            })
                .then(response => response.json())
                .then((response) => {
                if (response.ok) {
                    
                    this.locations.push(body)
                    this.$router.push({ path: '/'});
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

  
</style>

