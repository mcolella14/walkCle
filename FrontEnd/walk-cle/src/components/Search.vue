<template>
    <div id="search">
    <div class="search">
        <ul>
            <li :name="area" class="areaItem" @click="selectArea(area)" :key="area" v-for="area in locationArea">
                {{area}}
            </li>
            <li @click="filterByArea">
                *FILTER*
            </li>
        </ul>
    </div>
    </div>
</template>

<script>
import uniq from 'lodash/uniq'
import axios from 'axios';

export default {
    
    props: ['locations'],

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
    }}).then(response =>{
        this.locations = response.data;
    })
    },
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

ul{
    list-style: none;
}
li{
    width: 25%;
}

</style>
