<template>
    <div id="profile">
        <h2 id="username">{{username}}</h2>
        <h3>Checked In Locations</h3>
        <ul id="checkedInList">
            <li :key="location.name" v-for="location in checkedInLocations">
                {{location.name}}
            </li>
        </ul>
    </div>
</template>

<script>
import axios from 'axios';
export default {
    
    data(){
        return{
            username: document.getElementById("profile").textContent,
            checkedInLocations: []
        }
    },
    created(){
        console.log(this.username);
       
            axios.get(process.env.VUE_APP_REMOTE_API + '/checkedInLocations',{params: {
      username : this.username
    }}).then(response =>{
      this.checkedInLocations = response.data;
      console.log(this.checkedInLocations)
    })
        
    }

    


}
</script>

<style>
#profile{
    color: Black;
}
h3{
    color: white;
}
#username{
    color: lime;
    text-align: center;
}

#checkedInList{
    padding: 0;
    background: white;
    padding: 10px;
    border-radius: 5px;
    width: 30%;
    margin: auto;
    opacity: 0.9;
}

</style>
