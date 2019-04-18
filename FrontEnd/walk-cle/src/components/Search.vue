<template>
    <div id="search">
    <div style="font-weight: bolder; font-size: 120%;">Search by area</div>

        <ul>
            <li :name="''" :class="areaItem" @click="filterByArea('')">All Locations</li>
            <li :name="area" class="areaItem" @click="filterByArea(area)" :key="area" v-for="area in locationArea">
                {{area}}
            </li>
        </ul>

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
            document.getElementsByName('').forEach(element => {
                element.setAttribute("id", "notSelected")
            });
            let areas = document.getElementsByClassName('areaItem')
             Array.from(areas).forEach(element => {
                 element.setAttribute("id", "notSelected")
             });
            document.getElementsByName(area).forEach(element => {
                element.setAttribute("id", "selected")
            });
            
        },
        filterByArea(area){
            this.selectArea(area);
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
#search{
    width: 15%;
}
#selected{
    background: green;
    border-radius:10px;

}
#notSelected{
    background: none;
}

#search ul{
    list-style: none;
    text-align: right;  /*
    border: solid 2px white;
    width: 100%;
    padding: 5px;
    margin-right: 0px;
    border-radius: 3px;
    background: white;   */
}
#search li{
    padding: 10px;
    color:white;
}

.areaItem:hover{
    text-align:left;
}

#search ul:hover{
    cursor: pointer;
}
/* h2{
    text-align:left;
} */

</style>
