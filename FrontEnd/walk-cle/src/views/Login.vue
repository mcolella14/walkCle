<template>
<div id="login">
    <h1>Login</h1>
        <form>
            <input type="text" name="username" v-model="user.username" placeholder="Username" />
            <input type="password" name="password" v-model="user.password" placeholder="Password" />
            <button type="button" v-on:click="login(this.user)">Login</button>
        </form>
</div>
</template>

<script>
export default {
    data(){
        return {
            user:{
                username: "",
                password: ""
            }
        }
    },
    methods: {
        login(userInfo){
            fetch(`${this.API_URL}/account/register`,{
            method: 'POST',
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(userInfo)
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
