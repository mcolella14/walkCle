<template>
    <div id="profile">
        <div id="locations">
            <h2 id="username">{{username}}</h2>
            <h3>Checked In Locations</h3>
            <ul id="checkedInList">
                <li :key="location.name" v-for="location in checkedInLocations">
                    {{location.name}}
                </li>
            </ul>
        </div>
        
        <div id="badgesSection">
            <h3>BADGES</h3>
                <div id="defender">
                    <div>
                        <div>Defender of the Land</div>
                        <div v-if="badges.defenderBadge" class="have">
                            You have visited all locations!
                        </div>
                        <div v-if="!badges.defenderBadge" class="notHave">
                            Visit all locations to earn this badge!
                        </div>
                    </div>
                    <img id="defenderPic" src="@/assets/defender.jpg"/>
                </div>
                <div id="bottomsUp">
                    <div>
                        <div>Bottoms Up!</div>
                        <div v-if="badges.bottomsUpBadge" class="have">
                            You have visited 5 bars!
                        </div>
                        <div v-if="!badges.bottomsUpBadge" class="notHave">
                            Visit at least 5 bars to earn this badge!
                        </div>
                    </div>
                    <img id="beerPic" src="@/assets/beer.jpg"/>
                </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios';
export default {
    
    data(){
        return{
            username: document.getElementById("profile").textContent,
            checkedInLocations: [],
            badges:{ 
                defenderBadge: false,
                bottomsUpBadge: false
            }
        }
    },
    created(){
        console.log(this.username);
       
            axios.get(process.env.VUE_APP_REMOTE_API + '/checkedInLocations',{params: {
      username : this.username
    }}).then(response =>{
      this.checkedInLocations = response.data;
      console.log(this.checkedInLocations)
    }),
     axios.get(process.env.VUE_APP_REMOTE_API + '/badges',{params: {
      username : this.username
    }}).then(response =>{
      this.badges = response.data;
      console.log(response.data);
      this.setClasses();
      
    });
  
    },

    methods:{
        setClasses(){
          if(this.badges.defenderBadge){
        document.getElementById('defender').className = "earnedBadge"; 
        }
        else {document.getElementById('defender').className = "notEarnedBadge";}

        if(this.badges.bottomsUpBadge){
            document.getElementById('bottomsUp').className = "earnedBadge"; 
        }
        else {document.getElementById('bottomsUp').className = "notEarnedBadge";}
        }
    }


   

    


}
</script>

<style scoped>
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
    width: 100%;
    margin: auto;
    opacity: 0.9;
}
.have{
    color: lime;
    font-weight: bolder
}
.notHave{
    color: red;
    font-weight: bolder;
}

#badgesSection{
    width: 20%;
    height: auto;
}

.earnedBadge{
    height: 20%;
    background: white;
    padding: 20px;
    border-radius: 10px;
    margin-top: 20px;
    opacity:0.9;
}

#defenderPic{
    width: auto;
    height: 80%;
    border-radius: 100%;
}

#beerPic{
    width: 60%;
    height: auto;
    border-radius: 100%;
}
.notEarnedBadge{
    height: 20%;
    background: white;
    padding: 20px;
    border-radius: 10px;
    margin-top: 20px;
    opacity: 0.5;
}
#profile{
    display: flex;
    justify-content: space-evenly;
}
#defender{
    display: flex;
    align-items: center;
    justify-content: space-between;
}
#bottomsUp{
    display: flex;
    align-items: center;
    justify-content: space-between;
}

</style>
