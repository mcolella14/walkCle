<template>
<div id="register">
    <h1>Register</h1>
    <form @submit.prevent="register">
        <input class = "registration-input" type="text" name="username" v-model="user.username" placeholder="Username" required />
        <input class = "registration-input" type="password" name="password" v-model="user.password" placeholder="Password" required />
        <input class = "registration-input" type="password" name="password" v-model="user.confirmPassword" placeholder="Re-Enter Password" required />
        <button type="submit" class = 'btn' >Register</button>
    </form>
    <div class="alert alert-danger" role="alert" v-if="registrationErrors">
        There were problems registering this user.
      </div>
</div>
</template>

<script>
export default {
    data(){
        return {
            user:{
                username: '',
                password: '',
                confirmPassword: '',
                role: 'user',
            },
            registrationErrors: false,
        };
    },
    methods: {
        register() {
            fetch(`${process.env.VUE_APP_REMOTE_API}/register`, {
                method: 'POST',
                headers: {
                Accept: 'application/json',
                'Content-Type': 'application/json',
                },
                body: JSON.stringify(this.user),
            })
                .then((response) => {
                if (response.ok) {
                    this.$router.push({ path: '/login', query: { registration: 'success' } });
                } else {
                    this.registrationErrors = true;
                }
                })

                .catch((err) => console.error(err));
    
        }, 
    }
}
</script>

<style>
#register{
    margin-left:auto;
    margin-right: auto;
    padding: 20px 50px 20px 50px;
    width: 20%;
    border-radius: 4px;
    color: white;
}
.btn {
    border: .5px solid lightgrey;
    border-radius: 10px;
}
.registration-input{
    margin-left: auto;
    margin-right: auto;
}
</style>
