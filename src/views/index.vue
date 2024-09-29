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
  <div style="display: flex;height: calc(100% - 106px);">

    <div class="note-list" style="flex: 1">
      <EssaysList></EssaysList>
    </div>
    <div class="note-list" style="flex: 1">
      <EssaysList></EssaysList>
    </div>
    <div class="note-list" style="flex: 1">
      <EssaysList></EssaysList>
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

.logo {
  width: 50px;
  height: 50px;
  border-radius: 50%;
}

.note-list {
  border-top: 3px solid #a29292;
  height: 100%;
  border-left: 1px solid gray;
  padding: 0 20px;

  &:last-of-type {
    border-right: 1px solid gray;
  }

}
</style>
