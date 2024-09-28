<script setup>

import {ref} from 'vue'

let count = ref(0);

function increase() {
  count.value++;
}

const title = "随笔"
const id = "title"

const tableData = [
  {
    name: '2016-05-03',
    url: 'https://www.baidu.com',
    desc: 'No. 189, Grove St, Los Angeles',
  }, {
    name: '2016-05-04',
    url: 'https://www.baidu.com',
    desc: 'No. 189, Grove St, Los Angeles',
  }, {
    name: '2016-05-05',
    url: 'https://www.baidu.com',
    desc: 'No. 189, Grove St, Los Angeles',
  }, {
    name: '2016-05-06',
    url: 'https://www.baidu.com',
    desc: 'No. 189, Grove St, Los Angeles',
  },


]


</script>

<template>
  <div class="title">
    <img alt="" class="logo" src="@/assets/images/essays.jpeg">
    <span :id>{{ title }}</span>
  </div>
  <div class="note-list">
    <el-table :data="tableData" style="width: 100%">
      <el-table-column label="随笔名称" width="200">
        <template #default="props">
          <div style="display: flex; align-items: center">
            <a :href="props.row.url" target="_blank">{{ props.row.name}}</a>
          </div>
        </template>
      </el-table-column>
      <el-table-column prop="desc" label="简述"/>
    </el-table>
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

.note-list {
  border-top: 3px solid #a29292;
}
</style>
