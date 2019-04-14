<template>
    <div id="about">
        <div id="box">
            <h1>{{ name }}</h1>
            <h2>{{ description }}</h2>
            <!--<img src="../assets/ProgressiveField.jpg"> ASK DAN ABOUT THIS -->
        </div>
    </div>
</template>

<script>
    import { EventBus } from '@/event-bus.js';

export default {
    
    data(){
        return{
            description: '',
            name: '',
            picName: '',
        }
    },

    mounted(){
        EventBus.$on('display-info', place =>{
            this.description = place.description;
            this.name = place.name;
            this.picName = '../assets/' + place.name.replace(/\s/g, '') + '.jpg';
            
        });
    }

}
</script>
    

<style>
#box{
    background: white;
    color:black;
    padding: 10px;
    border-radius: 5px;
    box-shadow: 0 0 20px white;
    text-align: center;

}


</style>
