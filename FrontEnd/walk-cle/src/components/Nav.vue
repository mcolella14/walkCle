<template>
<div id="nav">
    <div class="navBar">
        <div class="header">
            <h1>WalkCLE</h1>
        </div>
        <ul class ="navList">
            <li v-if="!showLogout"><router-link :to="{ name: 'Login' }">Login</router-link></li>
            <li v-if="showLogout" v-on:click="logout"><router-link :to="{ name: 'Home' }">Logout</router-link></li>
            <li><router-link :to="{ name: 'Register' }">Register</router-link></li>
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
            showLogout: false
        }
    },
    mounted(){
        
        EventBus.$on('i-got-clicked', () =>{
            this.showLogout = this.isLogged();
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
        }
    }

}
</script>

<style>
    #nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
}

#nav a:visited {
  color: #6f263d;
}

#nav a.router-link-exact-active {
  color: #6f263d;
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
</style>
