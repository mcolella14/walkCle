<template>
    <div class="navBar">
        <div class="header">
            <h1>WalkCLE</h1>
        </div>
        <ul class ="navList">
            <li><router-link :to="{ name: 'Login' }">Login</router-link></li>
            <li><router-link :to="{ name: 'Register' }">Register</router-link></li>
        </ul>
    </div>
</template>

<script>
export default {

}
</script>

<style>

    .header{
        grid-area: header;
    }
 
    .navBar{
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        grid-template-areas: '. header nav';

    }
    .navList{
        grid-area: nav;
        list-style: none;
        display: flex;
        justify-content: flex-end;
    }
    .navList li a{
        padding: 10px;
        text-decoration: none;
    }
</style>
