<template>
  <div>
    <top-header></top-header>
    <div>
      <div class="hr">
        <h4>购物车</h4>
      </div>
      <div class="cart-box">
        <p class="nobuy">
          您还没有选购商品，您可以选择以下推荐商品， 也可以
          <router-link to="/">返回首页</router-link>购买。
        </p>
        <div class="cart">
          <table>
            <thead>
              <tr>
                <th colspan="2">商品名称</th>
                <th>积分</th>
                <th>单价</th>
                <th>购买数量</th>
                <th>小计</th>
                <th>操作</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  <input type="checkbox" class="checkA" />
                </td>
                <td>
                  <img src="/static/images/930_G_1536033344075.jpg" alt />
                  <a href="/html/detail.html?id=1" class="link blue">
                    <span>白桃</span>
                  </a>
                </td>
                <td>
                  <span>66积分</span>
                </td>
                <td>
                  <span>￥89</span>
                </td>
                <td>
                  <div class="sum_cont">
                    <label class="minute" @click="btn_minute(index)">-</label>
                    <input class="input"/>
                    <label class="add" @click="btn_add(index)">+</label>
                  </div>
                </td>
                <td>
                  <span>￥89</span>
                </td>
                <td>
                  <a href="javascript:;" class="delBtn blue">删除</a>
                </td>
              </tr>
            </tbody>
          </table>
          <p>
            <router-link to="/" class="gobuy">继续购物</router-link>
          </p>
          <div class="mbox">
            <router-link to class="blue" id="checkAll">全选</router-link>
            <router-link to="/Cart" class="blue" id="checkChoose">×删除选中商品</router-link>
            <div>
              总计：￥
              <span id="money">0</span>
              <router-link to="/" class="next">结算</router-link>
            </div>
          </div>
        </div>
      </div>

      <h4 class="morel">更多精彩</h4>
      <div id="all-item" class="series"></div>
    </div>
    <bottom-footer></bottom-footer>
  </div>
</template>
<script>
export default {
    data:function(){
        return {
            num:0
        }
    }
}
</script>
<style  scoped>
a {
  text-decoration: none;
}
.hr {
  width: 996px;
  margin: 0 auto;
  margin-top: 10px;
  margin-bottom: 28px;
  border-top: 1px dashed #d5d5d5;
  position: relative;
}
.hr h4 {
  width: 97px;
  height: 32px;
  line-height: 32px;
  text-align: center;
  color: #909090;
  background-color: #fff;
  position: absolute;
  left: 50%;
  margin-top: -16px;
  margin-left: -48px;
}
.cart-box {
  width: 996px;
  margin: 0 auto;
  margin-bottom: 40px;
}
.cart-box .nobuy {
  height: 208px;
  color: #626262;
  font-size: 13px;
  line-height: 208px;
  text-align: center;
}
.cart-box .nobuy a {
  color: #000;
  text-decoration: underline;
}
.cart-box .cart {
  width: 996px;
}
.cart-box .cart .blue {
  color: #626262;
}
.cart-box .cart .blue:hover {
  color: #87d0e3;
  text-decoration: underline;
}
.cart-box .cart table {
  width: 996px;
  color: #626262;
  margin: 0 auto;
  border-collapse: collapse;
  text-align: center;
}
.cart-box .cart table thead {
  height: 27px;
  line-height: 27px;
  font-size: 13px;
  background-color: #ededed;
}
.cart-box .cart table tbody {
  font-size: 14px;
}
.cart-box .cart table tbody tr td {
  height: 75px;
  padding: 5px 0;
  border-bottom: 2px solid #d5d5d5;
}
.cart-box .cart table tbody tr td:nth-child(1) {
  width: 23px;
}
.cart-box .cart table tbody tr td input {
  width: 20px;
  height: 20px;
}
.cart-box .cart table tbody tr td .link {
  height: 65px;
  float: left;
  line-height: 65px;
  margin-left: 5px;
}
.cart-box .cart table tbody tr td img {
  width: 65px;
  height: 65px;
  float: left;
}
/* .cart-box .cart table tbody tr td .addBtn,
.cart-box .cart table tbody tr td .num,
.cart-box .cart table tbody tr td .subBtn {
  width: 20px;
  height: 20px;
  color: #626262;
  line-height: 20px;
  text-align: center;
  display: inline-block;
  border: 1px solid #d5d5d5;
  margin-right: 5px;
} */

		.minute {
			position: absolute;
			width: 25px;
			text-align: center;
			height: 30px;
			line-height: 30px;
			left: 10px;
			font-size: 18px;
			border: 1px solid #DD524D;
		}
		/*加号*/
		
		.add {
			width: 25px;
			border: 1px solid #DD524D;
			height: 30px;
			line-height: 30px;
			text-align: center;
			position: absolute;
			right: 10px;
			font-size: 18px;
		}
		/*文本框*/
		
		.input {
			width: 40px;
			height: 26px;
			display: inline-block;
			line-height: 30px;
			text-align: center;
			position: absolute;
			right: 45px;
		}
.cart-box .cart table tbody tr td #num {
  color: #000;
}
.cart-box .cart p {
  width: 996px;
  height: 30px;
  margin-bottom: 20px;
}
.cart-box .cart p .gobuy {
  height: 30px;
  color: #6bc4df;
  float: right;
  font-size: 13px;
  line-height: 30px;
  margin-right: 10px;
}
.cart-box .cart p .gobuy:hover {
  text-decoration: underline;
}
.cart-box .cart .mbox {
  width: 996px;
  height: 60px;
}
.cart-box .cart .mbox a {
  color: #626262;
}
.cart-box .cart .mbox #checkAll,
.cart-box .cart .mbox #checkChoose {
  height: 60px;
  float: left;
  line-height: 60px;
  font-size: 13px;
  margin-right: 15px;
}
.cart-box .cart .mbox div {
  width: 230px;
  height: 60px;
  float: right;
  color: #626262;
  line-height: 60px;
  font-size: 16px;
  padding-left: 20px;
  background-color: #ededed;
  border: 1px solid #d5d5d5;
}
.cart-box .cart .mbox div .next {
  height: 30px;
  text-align: center;
  font-size: 14px;
  line-height: 30px;
  float: right;
  padding: 0 15px;
  margin-top: 15px;
  margin-right: 15px;
  background-color: #ff0;
}
.morel {
  width: 996px;
  margin: 0 auto;
  color: #626262;
  font-size: 13px;
  margin-bottom: 10px;
}
</style>