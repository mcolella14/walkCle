<template>
    <div id="checkIn">
        <h2>Check In</h2>
        <div id="form" v-if="isLogged">
            <h3>Pick a location to add it to your list!</h3>
            
            <select v-model="checkedInLocation.locationName" id="loc">
                <option></option>
                <option v-for="(location, $index) in locations" 
                        v-bind:value="location.name" 
                        :key="$index">{{location.name}}
                </option>
            </select>
            <input class="checkin-button" type="button" @click="checkIn()" value="Check In">
            
        
        </div>
        <div id="notLogged" v-if="!isLogged">
            Log in to check in!
        </div>
        <div id="success"></div>
        <div id="failure"></div>
    </div>
</template>

<script>
import axios from 'axios';

export default {
    props: ['locations', 'isLogged'],

    data(){
        return{
            checkedInLocation: {
                locationName: '',
                username: document.getElementById("profile").textContent
            }

        }
    },
    created(){
        document
        .getElementById("loc")
        .addEventListener("change", onChangeHandler);
    },

    methods:{
        checkIn(){
            fetch(`${process.env.VUE_APP_REMOTE_API}/checkIn`, {
                method: 'POST',
                headers: {
                Accept: 'application/json',
                'Content-Type': 'application/json',
                },
                body: JSON.stringify(this.checkedInLocation),
            })
            .then( ()=>{
                 console.log('Posted!');
                document.getElementById('success').innerText = 'You have successfully checked in to ' + this.checkedInLocation.locationName
                })
            .catch( error =>{
                document.getElementById('failure').innerText = 'You are unable to check in to ' + this.checkedInLocation.locationName

    })
    }
    }

}
</script>

<style scoped>

#checkIn{
    color: white;
}

h2{
    text-align: center;
}

input:hover{
    cursor: pointer;
}

#success{
    color: lime;
}
.checkin-button{
    margin-left: auto;
    margin-right: auto;
}
.checkin-button:hover{
    background-color: darkred;
}
</style>
