import Vue from 'vue'
import App from './App.vue'
import router from './router'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import store from './store'
import axios from 'axios'
import topHead from "@/components/topHead.vue"

Vue.use(ElementUI);
Vue.config.productionTip = false
axios.defaults.baseURL = "http://localhost:83"
Vue.prototype.axios = axios;
//定义全局组件
Vue.component("top-head", topHead)

new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app')