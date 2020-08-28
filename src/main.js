import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import Vant from 'vant'
import 'vant/lib/index.css'
import Topbar from './components/Topbar'
import Tabbar from './components/Tabbar'


Vue.component('my-topbar',Topbar);
Vue.component('my-tabbar',Tabbar);
Vue.config.productionTip = false
axios.defaults.baseURL='http://127.0.0.1:3000'
Vue.prototype.axios=axios
Vue.use(Vant)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
