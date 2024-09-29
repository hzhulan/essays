<template>
  <div class="top-info">API</div>
  <div v-for="(item,index) in items">
      <div style="display: flex; align-items: center; margin-top: 10px">
        {{ index + 1}}. <a :href="item.url" target="_blank">{{ item.name }}</a>
      </div>
  </div>
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

<style>
.top-info {
  text-align: center;
  font-size: 50px;
  padding: 20px 0;
  font-family: 华文楷体,serif;
}
</style>
