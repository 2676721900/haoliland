<template>
  <div class="top">
    <el-menu
      :default-active="activeIndex2"
      class="el-menu-demo"
      mode="horizontal"
      @select="handleSelect"
      background-color="#545c64"
      text-color="#fff"
      active-text-color="#ffd04b"
    >
      <el-menu-item index="1"><router-link to="/">博客</router-link></el-menu-item>
      <el-menu-item index="5">回顾</el-menu-item>
      <el-submenu index="2">
        <template slot="title">博客管理</template>
        <el-menu-item index="2-1">选项1</el-menu-item>
        <el-menu-item index="2-2">选项2</el-menu-item>
        <el-menu-item index="2-3">选项3</el-menu-item>
      </el-submenu>
      <el-menu-item index="3" disabled>消息中心</el-menu-item>
      <el-menu-item index="4">
        <a href="https://www.ele.me" target="_blank">个人中心</a>
      </el-menu-item>
      <el-menu-item index="6">登录</el-menu-item>
      <el-menu-item index="7"><router-link to="/reg">注册</router-link></el-menu-item>
    </el-menu>
  </div>
</template>
<script>
export default {
  data() {
    return {
      activeIndex2: "1"
    };
  },
  methods: {
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    }
  },
  created(){
      if(this.$route.path=="/reg"){
          this.activeIndex2= "7"
      }
      console.log(this.$route.path)
  }
};
</script>
<style >
* {
  padding: 0;
  margin: 0;
}
</style>>