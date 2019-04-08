<template>
<div id="login">
    <h1>Login</h1>
        <form>
            <input type="text" name="username" v-model="input.username" placeholder="Username" />
            <input type="password" name="password" v-model="input.password" placeholder="Password" />
            <button type="button" v-on:click="login()">Login</button>
        </form>
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
        login(){

        }
    }
}
</script>

<style>

</style>
