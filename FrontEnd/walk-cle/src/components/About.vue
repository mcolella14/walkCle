<template>
    <h1>{{ name }}</h1>
</template>

<script>
export default {
    data(){
        return{
            description: '',
            name: '',
        }
    },

    mounted(){
        EventBus.$on('display-info', place =>{
            //this.description = place.description;
            this.name = place.name;
        });
    }

}
</script>
    

<style>

</style>
