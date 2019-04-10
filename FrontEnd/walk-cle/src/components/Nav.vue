<template>
<div id="nav">
    <div class="navBar">
        <div class="header">
            <h1>WalkCLE</h1>
        </div>
        <ul class ="navList">
            <li><router-link :to="{ name: 'Login' }">Login</router-link></li>
            <li><router-link :to="{ name: 'Register' }">Register</router-link></li>
        </ul>
    </div>
</div>
</template>

<script>
export default {

}
</script>

<style>
    #nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
}

#nav a:visited {
  color: #6f263d;
}

#nav a.router-link-exact-active {
  color: #6f263d;
}
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
