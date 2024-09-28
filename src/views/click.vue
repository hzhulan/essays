<script setup>
import {ref} from 'vue'

let count = ref(0);

function increase() {
  count.value++;
}

</script>

<template>
  <div>
    <button @click="increase">当前点击次数:{{ count }}</button>
  </div>
</template>

<style scoped>

</style>
