<template>
<div id="nav">
    <div class="navBar">
        <div class="header">
            <h1>WalkCLE</h1>
        </div>
        <ul class ="navList">
            <!--<li id="addLocation" v-if="showLogout"><router-link :to="{ name: 'AddLocation' }">Add Location</router-link></li>-->
            <li id="profile" v-if="showLogout"><router-link :to="{ name: 'Home' }">{{this.username}}</router-link></li>
            <li v-if="!showLogout"><router-link :to="{ name: 'Login' }">Login</router-link></li>
            <li v-if="showLogout" v-on:click="logout"><router-link :to="{ name: 'Home' }">Logout</router-link></li>
            <li v-if="!showLogout"><router-link :to="{ name: 'Register' }">Register</router-link></li>
            <li><router-link :to="{ name: 'Home' }">Home</router-link></li>
        </ul>
    </div>
</div>
</template>

<script>
import { EventBus } from '@/event-bus.js';
import auth from '@/auth';
export default {

    

    data(){
        return{
            showLogout: false,
            username: ''
        }
    },
    mounted(){
        
        EventBus.$on('i-got-clicked', username =>{
            this.showLogout = this.isLogged();
            this.username = username;
        });
        

    },
    
    methods:{
        isLogged(){
            let token = auth.getToken();
           
           if (token !== null){
               return true
           }
           else{
               return false
           }
           
           
        },

        logout(){
             auth.destroyToken();
             this.showLogout = this.isLogged();
        }
    }

}
</script>

<style>
#nav {
  padding: 30px;
  color: white;
}

#nav a {
  font-weight: bold;
}

#nav a:visited {
  color: white;
}

#nav a.router-link-exact-active {
  color: white;
}
    .header{
        grid-area: header;
    }
 
    .navBar{
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        grid-template-areas: '. header nav';
        border-radius: 4px;

    }
    .navList{
        grid-area: nav;
        list-style: none;
        display: flex;
        justify-content: flex-end;
    }
    .navList li a{
        padding: 10px;
        text-decoration: none;
    }
#profile a{
    color: lime
}

#profile a:visited {
  color: lime;
}

#profile a.router-link-exact-active {
  color: lime;
}
</style>
