<!--渲染模版-->
<template>
  <h1>{{ msg }}</h1>
</template>

<!--组件逻辑-->
<script lang="ts">
  import Vue from "vue";

  // 通过 Vue.extend 启用 TypeScript 类型推断
  export default Vue.extend({
    data() {
      return {
        msg: 'Hello,Webpack',
      }
    },
  });
</script>
