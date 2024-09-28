<template>
  <el-table :data="items" style="width: 100%">
    <el-table-column label="随笔名称" width="200">
      <template #default="props">
        <div style="display: flex; align-items: center">
          <a :href="props.row.url" target="_blank">{{ props.row.name }}</a>
        </div>
      </template>
    </el-table-column>
    <el-table-column prop="desc" label="简述"/>
  </el-table>
</template>

<script>
import { ref, onMounted } from 'vue';
import config from "@/assets/js/config.js";

export default {
  name: 'EssaysList',
  setup() {
    let items = ref([]);

    // 异步请求，使用onMounted加载，会在组件挂载完成后执行
    onMounted(async () => {
      const response = await fetch(`${config.basePath}/essays/essayList`);
      const data = await response.json();
      items.value = data.data;
    });

    return {
      items
    };
  }
};
</script>
