// 告诉 TypeScript 编译器 .vue 文件其实是一个 Vue
declare module "*.vue" {
  import Vue from "vue";
  export default Vue;
}
