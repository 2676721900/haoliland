import Vue from 'vue'
import Reg from './views/Reg.vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Self from './views/Self.vue'
import Cart from './views/Cart.vue'
Vue.use(Router)

export default new Router({
    mode: 'history',
    base: process.env.BASE_URL,
    routes: [{
            path: '/',
            // name: 'home',
            component: Home
        },
        {
            path: '/reg',
            // name: 'home',
            component: Reg
        },
        {
            path: '/cart',
            // name: 'home',
            component: Cart
        },
        {
            path: '/self',
            // name: 'home',
            component: Self
        },
        {
            path: '/about',
            component: () =>
                import ( /* webpackChunkName: "about" */ './views/About.vue')
        }
    ]
})