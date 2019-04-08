<template>
<div id="register">
    <h1>Register</h1>
    
        <input type="text" name="username" v-model="newUser.username" placeholder="Username" />
        <input type="password" name="password" v-model="newUser.password" placeholder="Password" />
        <button type="button" v-on:click="register(this.newUser)">Register</button>

</div>
</template>

<script>
export default {
    data(){
        return {
            //href : "http://localhost:8080/walkcle/"  <--- we need to create our java maven project
            API_URL: "http://localhost:8080",

            newUser:{
                username: "",
                password: ""
            }
        }
    },
    methods: {
        register(newUser){                                  // This will not be a fetch it will just be a POST because it is coming from a form not an API
           const newUsername = newUser.username
                    this.$router.push("/");
        }
           
    }
}
</script>

<style>

</style>
