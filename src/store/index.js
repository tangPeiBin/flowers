import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    isLogin: true,
    uname:''
  },
  mutations: {
    changeState(state) {
      state.isLogin = !state.isLogin;
    },
    userLogin(state,uname) { 
      state.uname = uname;
    },
    userLoginout(state) { 
      state.uname = '';
    }
  },
  actions: {
  },
  modules: {
  }
})
