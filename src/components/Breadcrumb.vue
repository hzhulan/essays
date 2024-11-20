<script>
export default {
  name: 'Breadcrumb',
  props: {data: Array}

}
</script>

<template>
  <div class="break-container">
    <el-breadcrumb separator="/">
      <el-breadcrumb-item :to="{ path: data[0].path }">{{data[0].name}}</el-breadcrumb-item>
      <el-breadcrumb-item>{{ data[1].name }}</el-breadcrumb-item>
    </el-breadcrumb>
  </div>
</template>

<style scoped>
.break-container {
  padding: 20px 0;
}

</style>
