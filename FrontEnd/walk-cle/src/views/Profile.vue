<template>
    <h2 id="username">{{username}}</h2>
</template>

<script>

export default {
    data(){
        return{
            username: document.getElementById("profile").textContent
        }
    }
    


}
</script>

<style>
#username{
    color: lime;
    text-align: center;
}

</style>
