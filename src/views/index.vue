<script setup>
  function switchUrl (e) {
    const type = e.target.getAttribute('type');
    window.location.href = `./${type}`
  }
</script>

<template>
  <div class="container">


    <div class="title">
      <img alt="" class="logo" src="@/assets/images/essays.jpeg">
      <span>随笔</span>
    </div>
    <div class="content">
      <div @click="switchUrl" class="guard-info" type="job">实战环境</div>
      <div @click="switchUrl" class="guard-info" type="website">开发环境</div>
      <div @click="switchUrl" class="guard-info" type="doc">文档</div>
      <div @click="switchUrl" class="guard-info" type="user">用户</div>
    </div>
  </div>
</template>

<style scoped>
.container {
  background: url('@/assets/images/bg.jpg');
  background-size: cover;
  height: 100%;
}

.title {
  box-sizing: border-box;
  padding: 20px 20px;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  width: 100%;
  font-size: 50px;
  color: #a84b4b;
  font-family: 华文楷体, serif;

  span {
    margin-left: 20px;
  }
}

.content {
  display: flex;
  height: calc(100% - 106px);
  flex-direction: column;

  .guard-info {
    display: flex;
    width: 200px;
    height: 50px;
    align-items: center;
    justify-content: center;
    padding: 20px;
    box-sizing: border-box;
    background-image: repeating-linear-gradient(to bottom, #afb42b, transparent 50px);
    border-radius: 10px;
    border: 2px solid #ffffff;
    margin: 10px 10px 0 10px;
    cursor: pointer;
  }
}

.logo {
  width: 50px;
  height: 50px;
  border-radius: 50%;
}
</style>
