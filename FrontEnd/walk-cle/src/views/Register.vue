<template>
<div id="register">
    <h1>Register</h1>
    
        <input type="text" name="username" v-model="newUser.username" placeholder="Username" />
        <input type="password" name="password" v-model="newUser.password" placeholder="Password" />
        <button type="button" @submit.prevent v-on:click="register(this.newUser)">Register</button>
</div>
</template>

<script>
export default {
    data(){
        return {
            API_URL: "http://localhost:8080",

            newUser:{
                username: "",
                password: ""
            }
        }
    },
    methods: {
        register(newUser){
            fetch(`${this.API_URL}/account/register`,{
            method: 'POST',
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(newUser)
            })
            .then((response) => {
                if(response.ok){
                    this.$router.push("/");
                }
            })
        }
    }
}
</script>

<style>

</style>
