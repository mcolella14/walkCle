<template>
<div id="login">
    <h1>Login</h1>
    
        <form @submit.prevent="login">
            <input class="login-input" type="text" name="username" v-model="user.username" placeholder="Username" required />
            <input class="login-input" type="password" name="password" v-model="user.password" placeholder="Password" required />
            <button type="submit" class = 'btn' >Login</button>  
        </form>
        <div style="padding-top: 20px">
            <div style="padding-bottom: 10px">Don't have an account?</div> 
           <button><router-link :to="{ name: 'Register' }" class="register-button" >Register</router-link></button>
        </div>
        <div class="alert alert-danger" role="alert" v-if="invalidCredentials">
        Invalid username and password!
        </div>
        <div class="alert alert-success" role="alert" v-if="this.$route.query.registration">
        Thank you for registering, please sign in.
        </div>
        <div id="serverError" class="alert alert-danger" role="alert">
        </div>
        
        <!-- <div class="alert alert-danger" role="alert" v-if="invalidCredentials">
        Invalid username and password!
        </div> -->


</div>
</template>

<script>
import auth from '@/auth';
import { EventBus } from '@/event-bus.js';

export default {
    name: 'login',
    components:{},
    data(){
        return {
            user:{
                username: '',
                password: '',
            },
            invalidCredentials: false,
        };
    },
    methods: {
        login() {
            fetch(`${process.env.VUE_APP_REMOTE_API}/login`, {
                method: 'POST',
                headers: {
                Accept: 'application/json',
                'Content-Type': 'application/json',
                },
                body: JSON.stringify(this.user),
            })
                .then((response) => {
                if (response.ok) {
                    return response.text();
                } else {
                    this.invalidCredentials = true;
                }
                })
                .then((token) => {
                if (token != undefined) {
                    if (token.includes('"')) {
                    token = token.replace(/"/g, '');
                    }
                    auth.saveToken(token);
                    EventBus.$emit('i-got-clicked', this.user.username);
                    EventBus.$emit('login');

                    this.$router.push('/');

                }
                })
                .catch((err) => {
                    console.error(err);
                    document.getElementById('serverError').innerText = 'Something went wrong, please try again later...'
                }
                );


        },
    }
}

</script>

<style>
#serverError{
    color: red;
    font-weight:lighter;
    font-size: 110%; 
}
#login{
    text-align:center;
    margin-left: auto;
    margin-right: auto;
    padding: 20px 50px 20px 50px;
    width: 20%;
    border-radius: 4px;
    color: white;
}
.btn {
    border: .5px solid lightgrey;
    border-radius: 10px;
    text-decoration:none;
}
#login button {
    border-radius: 10px;
    text-decoration: none;
    margin-top: 4px;
}
#login button:hover{
    background-color: darkred;

}
.btn:visited{
    color:black;
    text-decoration: none;
}
.register-button{
    text-decoration: none;
}
.register-button:visited{
    color:black;
}
.login-input{
    margin-left: auto;
    margin-right: auto;
}
</style>
