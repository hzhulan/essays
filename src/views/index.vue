<script setup>
import EssaysList from "@/components/EssaysList.vue";
import {ref, defineComponent} from 'vue'

let input = ref('');
let keyword = '';


const handleChange = (value) => {
  keyword = input.value
}

</script>

<template>
  <div class="title">
    <img alt="" class="logo" src="@/assets/images/essays.jpeg">
    <span>随笔</span>
  </div>
  <div class="content">


    <div class="note-list" style="flex: 1">
    </div>
    <div class="note-list" style="flex: 1">
      <el-input v-model="input" @keydown="handleChange" placeholder="输入API名称"></el-input>
      <el-input v-model="input" @change="handleChange" placeholder="输入API名称"></el-input>
      <EssaysList :keyword="keyword"></EssaysList>
    </div>
    <div class="note-list" style="flex: 1">
    </div>
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
  width: 100%;
  font-size: 50px;
  color: #a84b4b;
  font-family: 华文楷体;

  span {
    margin-left: 20px;
  }
}

.content {
  display: flex;
  height: calc(100% - 106px);
  background: url('@/assets/images/bg.png');
  background-size: cover;
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
}
</style>
