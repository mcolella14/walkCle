<template>
<div id="register">
    <h1>Register</h1>
    
        <input type="text" name="username" v-model="input.username" placeholder="Username" />
        <input type="password" name="password" v-model="input.password" placeholder="Password" />
        <button type="button" v-on:click="register()">Register</button>
</div>
</template>

<script>
export default {
    data(){
        return {
            input:{
                username: "",
                password: ""
            }
        }
    },
    methods: {
        register(){

        }
    }
}
</script>

<style>

</style>
