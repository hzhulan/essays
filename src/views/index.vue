<script setup>
const title = "随笔"
const id = "title"

</script>

<template>
  <div class="title">
    <img alt="" class="logo" src="@/assets/images/essays.jpeg">
    <span :id>{{ title }}</span>
  </div>
</template>

<style scoped>
.title {
  box-sizing: border-box;
  padding: 20px 20px;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  height: inherit;
  width: 100%;
  font-size: 50px;
  color: #a84b4b;
  font-family: 华文楷体;

  span {
    margin-left: 20px;
  }
}

.logo {
  width: 50px;
  height: 50px;
  border-radius: 50%;
}
</style>
