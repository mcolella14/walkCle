<template>
<div id="login">
    <h1>Login</h1>
        <form @submit.prevent="login(this.user)">
            <input type="text" name="username" v-model="user.username" placeholder="Username" />
            <input type="password" name="password" v-model="user.password" placeholder="Password" />
            <button type="submit" >Login</button>  <!-- v-on:click="login(this.user)" -->
        </form>
</div>
</template>

<script>
export default {
    data(){
        let isAuthorized = false;
        return {
            user:{
                username: "",
                password: ""
            },
        }
    },
    methods: {
        loginSuccess(response){
            if(response.data.success){
                this.isAuthorized = true;
            }
        },

        login(){
            console.log(this.user.username + this.user.password);
            fetch(`${this.API_URL}/account/register`,{
            method: 'POST',
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(this.user)
            })
            .then((response) => {
                if(response.ok){
                    // $emit isAuthorized === true  ??
                    this.$router.push("/");
                }
            })
        }

        }
}

</script>

<style>

</style>
