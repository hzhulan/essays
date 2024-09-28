<script>
import EssaysList from "@/components/EssaysList.vue";

export default {
  name: 'index',
  components: {EssaysList},
  setup() {
    return {
      title: '随笔',
      id: "title"
    }
  }
}


</script>

<template>
  <div class="title">
    <img alt="" class="logo" src="@/assets/images/essays.jpeg">
    <span :id>{{ title }}</span>
  </div>
  <div class="note-list">
    <EssaysList></EssaysList>
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
