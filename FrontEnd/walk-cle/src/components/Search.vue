<template>
    <div id="search">
    <div class="search">
        <ul>
            <li :key="area" v-for="area in locationArea">
                {{area}}
            </li>
        </ul>
    </div>
    </div>
</template>

<script>
import uniq from 'lodash/uniq'
import GoogMap from "@/components/GoogMap.vue";
export default {
    props: ['locations'],
    data(){
        return{
            areaLocations: []
        }
    },
    computed: {
  locationArea() {
    return uniq(this.locations.map(p => p.area));
        }
    }
}
</script>

<style>

</style>
