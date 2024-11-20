<template>
  <div class="top-info"><a href="./">返回首页</a></div>
  <div v-for="(item,index) in items">
    <div style="display: flex; align-items: center; margin-top: 10px">
<!--      {{ index + 1 }}. <a :href="item.url" target="_blank">{{ item.name }}</a>-->
      <img src="@/assets/images/icons/book.png" style="height: 30px;" alt=""/><a :href="item.url" target="_blank" style="margin-left: 10px;">{{ item.name }}</a>
    </div>
  </div>
</template>

<script>
import {ref, onMounted, onBeforeUpdate, watch} from 'vue';
import config from "@/assets/js/config.js";
import {throttle} from '@/assets/js/common.js'

export default {
  name: 'EssaysList',
  props: {keyword: String, type: Number},
  setup: function (props) {
    let items = ref([]);
    // 异步请求，使用onMounted加载，会在组件挂载完成后执行
    onMounted( async () => {
        const response = await fetch(`${config.basePath}/essays/essayList?type=${props.type}`);
        const data = await response.json();
        items.value = data.data;
    });

    watch(() => props.keyword, (newValue, oldValue) => {
      throttle.throttle( () => {
        queryList(newValue);
      }, 500)
    });

    const queryList = async (searchWord) => {
      const response = await fetch(`${config.basePath}/essays/essayList?keyword=${searchWord}&type=${props.type}`);
      const data = await response.json();
      items.value = data.data;
    }


    return {
      items
    };
  },
  computed: {},
};
</script>

<style>
.top-info {
  text-align: left;
  font-size: 20px;
  padding: 20px 0;
  font-family: 华文楷体, serif;
  //cursor: pointer;
}
</style>
