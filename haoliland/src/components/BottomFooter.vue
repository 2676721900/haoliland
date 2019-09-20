<template>
  <div class="footer">
    <div class="service">
      <a href="#">
        <img src="../static/images/1421657021.jpg" alt="在线客服" />
      </a>
    </div>
    <p id="help" @click="show">
      帮助中心
      <i></i>
    </p>
    <div class="foot-menu" :class="{showblock:isshowblock}">
      <dl>
        <dt>
          <i></i>购物指南
        </dt>
        <dd>
          <a href="#">购物流程</a>
        </dd>
        <dd>
          <a href="#">蛋糕尺寸</a>
        </dd>
      </dl>
      <dl>
        <dt>
          <i></i>订购范围
        </dt>
        <dd>
          <a href="#">地图查询</a>
        </dd>
        <dd>
          <a href="#">团购业务</a>
        </dd>
      </dl>
      <dl>
        <dt>
          <i></i>公司服务
        </dt>
        <dd>
          <a href="#">储值卡</a>
        </dd>
        <dd>
          <a href="#">成都门店</a>
        </dd>
        <dd>
          <a href="#">官网营业资质</a>
        </dd>
      </dl>
      <dl>
        <dt>
          <i></i>企业招聘
        </dt>
        <dd>
          <a href="#">好利来招聘</a>
        </dd>
        <dd>
          <a href="#">黑天鹅招聘</a>
        </dd>
      </dl>
      <dl>
        <dt>
          <i></i>售后服务
        </dt>
        <dd>
          <a href="#">投诉渠道</a>
        </dd>
        <dd>
          <a href="#">客服中心</a>
        </dd>
        <dd>
          <a href="#">加盟维权</a>
        </dd>
      </dl>
      <dl>
        <dt>
          <i></i>友情链接
        </dt>
        <dd>
          <a href="#">黑天鹅蛋糕官网</a>
        </dd>
        <dd>
          <a href="#">罗红摄影艺术馆</a>
        </dd>
        <dd>
          <a href="#">百度</a>
        </dd>
      </dl>
    </div>
    <div class="foot">
      <div class="foot-lt">
        <p>Copyright2010 &copy;北京市好利来食品有限公司 版权所有</p>
        <p>京icp备15012142号</p>
        <p>好利来官方邮箱：info@holiland.com</p>
        <p>客服电话：400-700-5999</p>
        <p>注册地址：北京市朝阳区观音堂文化大道甲6号北201室</p>
        <p>食品流通许可证号：</p>
        <p>统一社会信用代码：91110105721420005Y</p>
      </div>
      <div class="wx">
        FOLLOW US
        <a href="#" id="wx"></a>
        <dl>
          <dt>在微信上关注我们</dt>
          <dd></dd>
        </dl>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data: function() {
    return {
      isshowblock: false
    };
  },
  methods: {
    show() {
      this.isshowblock = !this.isshowblock;
    }
  }
};
</script>
<style scoped>
a {
  text-decoration: none;
}
.service {
  width: 20px;
  height: 72px;
  position: fixed;
  right: 0;
  top: 450px;
}
.footer {
  width: 996px;
  margin: 0 auto;
}
.footer #help,
.foot-menu {
  color: #626262;
  background-color: #ededed;
}
.footer #help {
  height: 24px;
  line-height: 24px;
  font-size: 13px;
  padding-left: 20px;
  position: relative;
  margin-top: 10px;
}
.footer #help i {
  width: 22px;
  height: 14px;
  float: left;
  top: 6px;
  left: 84px;
  position: absolute;
  background: url("../static/images/bj_4.png") 0px -84px;
}
.foot-menu {
  height: 0;
  display: none;
}
.showblock {
  height: 129px;
  display: block;
}
.footer .foot-menu dl {
  width: 140px;
  float: left;
  color: #626262;
  margin-left: 26px;
  margin-top: 18px;
  position: relative;
}
.footer .foot-menu dl dt {
  font-size: 19px;
  margin-left: 33px;
}
.footer .foot-menu dl dt i {
  width: 23px;
  height: 23px;
  position: absolute;
  left: 5px;
  background-image: url("../static/images/bj3.png");
}
.footer .foot-menu dl dd {
  margin-left: 39px;
}
.footer .foot-menu dl dd a {
  color: #626262;
  font-size: 12px;
}
.footer .foot {
  margin: 10px 0;
  border-top: 1px solid #d5d5d5;
}
.footer .foot .foot-lt {
  float: left;
  margin-top: 10px;
}
.footer .foot .foot-lt p {
  height: 20px;
  color: #898989;
  line-height: 20px;
  font-size: 12px;
}
.footer .foot .foot-lt p:nth-child(4) {
  margin: 10px 0;
}
.footer .foot .foot-lt p:nth-child(7) {
  margin-bottom: 10px;
}
.footer .foot .wx {
  float: right;
  position: relative;
  padding-top: 14px;
  font-size: 13px;
}
.footer .foot #wx {
  width: 31px;
  height: 35px;
  position: absolute;
  top: 35px;
  right: 34px;
  background: url("../static/images/bj_2.png") no-repeat 0px -56px;
}
.footer .foot a:hover + dl {
  display: block;
  height: 200px;
  border: 1px solid #ccc;
}
.footer .foot .wx dl {
  width: 180px;
  height: 0px;
  border-radius: 5px;
  position: absolute;
  left: -114px;
  top: -189px;
  background-color: #fff;
  display: none;
}

.footer .foot .wx dl dt {
  height: 24px;
  color: #898989;
  line-height: 24px;
  border-bottom: 1px solid #ccc;
  padding-left: 15px;
  margin: 10px 0;
}
.footer .foot .wx dl dd {
  width: 150px;
  height: 150px;
  background-image: url("../static/images/weixin.jpg");
  background-size: 100%;
  margin: 5px 15px;
}
</style>