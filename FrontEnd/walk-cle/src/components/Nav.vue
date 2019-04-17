<template>
<div id="nav">
    <div class="navBar">
        <div class="header">
            <h1>WalkCLE&#8482;</h1>
        </div>
        <ul class ="navList">
            <!--<li id="addLocation" v-if="showLogout"><router-link :to="{ name: 'AddLocation' }">Add Location</router-link></li>-->
            <li class ="nav-link" id="profile" v-if="showLogout"><router-link v-bind:username="username" :to="{ name: 'Profile' }">{{this.username}}</router-link></li>
            <li class ="nav-link" v-if="!showLogout"><router-link :to="{ name: 'Login' }">Login</router-link></li>
            <li class ="nav-link" v-if="showLogout" v-on:click="logout"><router-link :to="{ name: 'Home' }">Logout</router-link></li>
            <li class ="nav-link" v-if="!showLogout"><router-link :to="{ name: 'Register' }">Register</router-link></li>
            <li class="nav-link" ><router-link :to="{ name: 'Home' }">Home</router-link></li>
        </ul>
        <sliding-nav id="silde-nav"/>
    </div>
</div>
</template>

<script>
import { EventBus } from '@/event-bus.js';
import auth from '@/auth';
import SlidingNav from '@/components/SlidingNav'
export default {
    components:{
        SlidingNav
    },
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
        })
        

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
             EventBus.$emit('logout');
             location.reload();
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

.navList a:visited {
 color: white;
}

.navList a:visited:hover {
 color: black;
}

#slide-nav a:visited{
    color: black;
}

#nav a.router-link-exact-active {
  color: inherit;
}
    .header{
        grid-area: header;
    }
 
    .navBar{
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        grid-template-areas: 'nav header slide';
        border-radius: 4px;

    }
    .navList{
        grid-area: nav;
        list-style: none;
        display: flex;
        justify-content: space-evenly;
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

.nav-link{
    align-self: center;
    padding: 10px 5px 10px 5px;
}

.nav-link:hover{
    text-align: center;
  background-color: white;
  color:#000;
   border-radius: 10px;
}
</style>
