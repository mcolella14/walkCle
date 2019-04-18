<template>
<div id="slide">
  <nav class="navbar">
    <span class="open-slide">
      <a href="#" v-on:click="openSlideMenu()">
        <svg width="30" height="30">
            <path d="M0,5 30,5" stroke="#fff" stroke-width="5"/>
            <path d="M0,14 30,14" stroke="#fff" stroke-width="5"/>
            <path d="M0,23 30,23" stroke="#fff" stroke-width="5"/>
        </svg>
      </a>
    </span>

    <!--<ul class="navbar-nav">
      <li id="profile" v-if="showLogout"><router-link :to="{ name: 'Home' }">{{this.username}}</router-link></li>
            <li v-if="!showLogout"><router-link :to="{ name: 'Login' }">Login</router-link></li>
            <li v-if="showLogout" v-on:click="logout"><router-link :to="{ name: 'Home' }">Logout</router-link></li>
            <li v-if="!showLogout"><router-link :to="{ name: 'Register' }">Register</router-link></li>
            <li><router-link :to="{ name: 'Home' }">Home</router-link></li>
    </ul>-->
  </nav>

  <div id="side-menu" class="side-nav">
    <a href="#" class="btn-close" v-on:click="closeSlideMenu()">&times;</a>
    <router-link id="router" :to="{ name: 'Home' }">Home</router-link>
    <router-link id="router" :to="{ name: 'CheckInView' }">Check In</router-link>
    <router-link id="router" :to="{ name: 'DirectionsView' }">Directions</router-link>
    <div @click="shadow" id="box">More dramatic box shadow</div>
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
            username: '',
            boxShadowFactor: 0
        }
    },
    mounted(){
        
        EventBus.$on('i-got-clicked', username =>{
            this.showLogout = this.isLogged();
            this.username = username;
        });
        

    },

     methods:{
        description: function(event){
            alert("this is an alert")
        },

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
        },

        openSlideMenu(){
            document.getElementById('side-menu').style.width = '250px';
            document.getElementById('main').style.marginRight = '250px';
        },

        closeSlideMenu(){   // add some sort of functionality using ElementById('something').addClass('hidden') and 'visable'
            document.getElementById('side-menu').style.width = '0';
            document.getElementById('main').style.marginLeft = '0';
        },
        shadow(){
            this.boxShadowFactor++;
            document.getElementById('side-menu').style = "box-shadow: -"+ (this.boxShadowFactor*this.boxShadowFactor)+ "px 0 50px black";
            this.openSlideMenu();
        }  

    }

}


</script>

<style>
#slide{
  color: black;
}
#box:hover{
  cursor: pointer;
}

#link a:visited{
  color: black
}

#link{
  color:#000;
}
#router {
  color: black !important;
}
body{
  font-family:"Arial", Serif;
  background-color:#f4f4f4;
  overflow-x:hidden;
  background-color: black;
}

.navbar{
  overflow:hidden;
  height:63px;
}

.navbar a{
  float:left;
  display:block;
  color:#f2f2f2;
  text-align:center;
  padding:14px 16px;
  text-decoration:none;
  font-size:17px;
  border-radius: 10px;
}

.navbar ul{
  margin:8px 0 0 0;
  list-style:none;
}

.navbar a:hover{
  background-color:#ddd;
  color:#000;
}

.side-nav{
  height:100%;
  width:0;
  position:fixed;
  z-index:1;
  top:0;
  right:0;
  background-color:white;
  box-shadow: 0 0 50px black;
  overflow-x:hidden;
  padding-top:60px;
  transition:0.5s;
}

.side-nav a{
  padding:10px 10px 10px 30px;
  text-decoration:none;
  font-size:22px;
  color:black;
  display:block;
  transition:0.3s;
}

.side-nav a:hover{
  color:white;
  background-color:darkred;
}

.side-nav a:visited{
  color:#000;
}
.side-nav .btn-close{
  position:absolute;
  top:0;
  right:22px;
  font-size:36px;
  margin-left:50px;
}

#main{
  transition:margin-right 0.5s;
  padding:20px;
  overflow:hidden;
  width:100%;
}

@media(max-width:568px){
  .navbar-nav{display:none}
}

@media(min-width:568px){
  /*.open-slide{display:none}*/
}
.open-slide {
  float: right;
}

</style>
