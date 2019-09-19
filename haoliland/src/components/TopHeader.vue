<template>
  <div class="header">
    <div class="logo">
      <h1>
        <router-link to="/">
          <img src="../static/images/logo.png" alt="logo" />
        </router-link>
      </h1>
    </div>

    <div class="nav">
      <div class="nav-top">
        <router-link to="/reg" id="header-register">注册</router-link>
        <router-link to="/login" id="header-login">登录</router-link>
        <router-link to="/cart">
          <i></i>
          <span id="h-num">0</span>件
        </router-link>
        <router-link to="javascript:;">
          <i></i>
          <span>成都</span>
        </router-link>
      </div>
      <div class="nav-bottom">
        <nav>
          <ul>
            <li>
              <router-link to="/" @click="getAllProduct">
                <span>All Products</span>
                <span>全部产品</span>
              </router-link>
            </li>
            <li>
              <router-link to="/cakeSeries?id=2">
                <span>Cake Series</span>
                <span>蛋糕系列</span>
              </router-link>
              <ul class="s-nav">
                <li>
                  <router-link to="/cakeSeries?id=3">经典系列</router-link>
                </li>
                <li>
                  <router-link to="/cakeSeries?id=4">儿童系列</router-link>
                </li>
                <li>
                  <router-link to="/cakeSeries/list?id=5">真爱系列</router-link>
                </li>
                <li>
                  <router-link to="/cakeSeries/list?id=6">尊爱系列</router-link>
                </li>
              </ul>
            </li>
            <li>
              <router-link to="/html/list?id=2">
                <span>Wagashi</span>
                <span>零食糕点</span>
              </router-link>
            </li>
            <li>
              <router-link to="/html/about">
                <span>About Us</span>
                <span>关于我们</span>
              </router-link>
            </li>
          </ul>
        </nav>
        <div class="tel">
          <p>   
            <i></i>
            <span>400-700-5999</span>
          </p>
        </div>
        <form>
          <router-link to="/about" class="inp"></router-link>
          <input type="text" id="search" />
        </form>
      </div>
    </div>
  </div>
</template>
<script>
export default {
methods:{
  getAllProduct(){
    axios.get(baseURL,{

    })
  }
}
};
</script>
<style scoped>
a {
  text-decoration: none;
}
li {
  list-style: none;
}

.header {
  width: 996px;
  height: 125px;
  margin: 0 auto;
}
.header .logo {
  float: left;
  margin-top: 30px;
}
.header .nav {
  width: 845px;
  float: right;
}
.header .nav,
.header a {
  color: #6bc4df;
  font-size: 14px;
}
.header .nav-top {
  height: 14px;
  padding-top: 23px;
  margin-bottom: 13px;
}
.header .nav-top a {
  float: right;
  line-height: 14px;
  margin-left: 20px;
  height: 14px;
}
.header .nav-top a i {
  float: left;
  background-size: 100%;
  margin-right: 8px;
}
.header .nav-top a:nth-child(4) i {
  width: 9px;
  height: 14px;
  background-image: url("../static/images/dizhi_icon.png");
}
.header .nav-top a:nth-child(3) i {
  width: 18px;
  height: 14px;
  background-image: url("../static/images/cart_icon.png");
}
.header .nav-bottom nav {
  float: left;
}
.header .nav-bottom ul li {
  width: 163px;
  height: 50px;
  float: left;
  text-align: center;
  border-right: 1px solid #6bc4df;
  position: relative;
}
.header .nav-bottom ul li span {
  height: 25px;
  line-height: 25px;
  display: block;
}
.header .nav-bottom ul li:last-child {
  border: 0;
}
.header .nav-bottom ul li:nth-child(2):hover .s-nav {
  display: block;
  z-index: 666;
}
.header .nav-bottom .s-nav {
  width: 125px;
  background-color: #fff;
  left: -20px;
  position: absolute;
  display: none;
}
.header .nav-bottom .s-nav li {
  width: 125px;
  height: 43px;
  line-height: 43px;
  border: 0;
}
.header .nav-bottom .tel,
.header .nav-bottom form {
  float: right;
  font-size: 12px;
  margin-right: 46px;
}
.header .nav-bottom .tel {
  margin-bottom: 6px;
}
.header .nav-bottom .tel i {
  width: 15px;
  height: 15px;
  float: left;
  background-image: url("../static/images/phone_icon.png");
  background-size: 100%;
  margin-right: 1px;
}
.header .nav-bottom form {
  width: 105px;
  height: 20px;
  position: relative;
  border: 1px solid #6bc4df;
}
.header form .inp {
  width: 20px;
  height: 20px;
  position: absolute;
  left: 0px;
  top: 0px;
  background-image: url("../static/images/search_icon.png");
  background-size: 100%;
}

.header .nav-bottom form input {
  width: 85px;
  height: 20px;
  float: left;
  margin-left: 20px;
  outline: none;
  border: none;
}
</style>