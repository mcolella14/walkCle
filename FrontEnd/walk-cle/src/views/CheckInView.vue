<template>
    <check-in :isLogged="isLogged" :locations="locations"/>
</template>

<script>
import CheckIn from '@/components/CheckIn.vue'
export default {

    props:['locations', 'isLogged'],

    components:{
        CheckIn
    }

}
</script>

<style>

</style>
