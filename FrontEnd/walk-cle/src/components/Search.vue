<template>
    <div id="search">
    <div class="search">
        <h2>Search By Area</h2>
        <ul>
            <li :name="area" class="areaItem" @click="selectArea(area)" :key="area" v-for="area in locationArea">
                {{area}}
            </li>
            <li @click="filterByArea()">
                *FILTER*
            </li>
        </ul>
    </div>
    </div>
</template>

<script>
import uniq from 'lodash/uniq'
import axios from 'axios';
import { EventBus } from '@/event-bus.js';

export default {
    
    props: ['locations', 'area'],

    data(){
        return{
            areaLocations: [],
            currentArea: '',
        }
    },
    computed: {
  locationArea() {
    return uniq(this.locations.map(p => p.area));
        }
    },
    methods: {
        selectArea(area){
            this.currentArea = area;
            let areas = document.getElementsByClassName('areaItem')
             Array.from(areas).forEach(element => {
                 element.setAttribute("id", "notSelected")
             });
            document.getElementsByName(area).forEach(element => {
                element.setAttribute("id", "selected")
            });
            
        },
        filterByArea(){
        axios.get(process.env.VUE_APP_REMOTE_API + '/searchArea',{params: {
      area : this.currentArea
    }}).then(
        EventBus.$emit('filter', this.currentArea)
        
    )
    }
    }
}
</script>

<style>
#selected{
    background: green;

}
#notSelected{
    background: none;
}

#search ul{
    list-style: none;
    text-align: left;
    padding: 3px;
    border: solid 2px white;
    width: 25%;
}
#search li{
border-bottom: solid 1px white;
padding: 2px;
}
h2{
    text-align:left;
}

</style>
