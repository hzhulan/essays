<script setup>
import EssaysList from "@/components/EssaysList.vue";
import Breadcrumb from "@/components/Breadcrumb.vue";
import {ref} from 'vue'

let input = ref('');
let keyword = ref('');


const handleKeydown = (event) => {
  setTimeout(() => {
    keyword.value = event.target.value;
  }, 0)

}

</script>

<template>
  <div class="container">

    <div class="title">
      <img alt="" class="logo" src="../../assets/images/essays.jpeg">
      <span>随笔</span>
    </div>
    <div class="content">
      <div class="note-list" style="flex: 1">
        <Breadcrumb :data="[{name:'首页', path:'/'}, {name: '开发环境', path:'/website'}]"/>
        <el-input style="width: 30%;" v-model="input" @keydown="handleKeydown" placeholder="输入环境名称"></el-input>
        <EssaysList :keyword="keyword" :type="2"/>
      </div>
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
}

.logo {
  width: 50px;
  height: 50px;
  border-radius: 50%;
}

.note-list {
  border-top: 3px solid #a29292;
  height: 100%;
  padding: 0 20px;
  margin-left: 50px;
}
</style>
