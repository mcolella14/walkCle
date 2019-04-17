<template>
    <div id="about">
    <div id="box"> 
         <!--   
        <Modal
  btnText=" click for more info"
  modalContent="
        <div>
          <h2> Place </h2>
          <p> Description </p>
        </div>
        "
  :closeBtn="true"
  closeBtn-content="
        <span>X</span>
        "
/>
     -->    
        <div id="box">
            <h1>{{ name }}</h1>
            <h2>{{ description }}</h2>
           <!-- <img src="../assets/ProgressiveField.jpg"> ASK DAN ABOUT THIS  -->
        </div>
      
    </div>
    </div>
</template>

<script>
    import { EventBus } from '@/event-bus.js';
    import Modal from '@melmacaluso/vue-modal';


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
    },

}
</script>
    

<style>
#box{
    background: rgba(255, 255, 255, 0.6);
    color:black;
    padding: 0px;
    border-radius: 0px;
    box-shadow: 0 0 20px white;
    text-align: center;

}


</style>
