<template>
  <div>
    <my-topbar></my-topbar>
    <div class="container" v-if="$store.state.isLogin">
      <input type="text" placeholder="用户账号" v-model='uname'/>
      <input type="password" placeholder="密码" v-model='upwd'/>
      <button @click="login">登录</button>
      <div>
        <router-link to="/register">注册账号</router-link>
        <router-link to="/findpassword">忘记密码?</router-link>
      </div>
    </div>
    <div class="account" v-else>
        <div class="user">
            <img class="user_img" src="../assets/user/tx.png" alt="">
            <div>
                <p class="username">{{$store.state.uname}}</p>
                <div class="member"><img src="../assets/user/v1.png" alt=""><span>普通会员</span></div>
            </div>
            <img class="qrCode" src="../assets/user/qrCode.png" alt="">
        </div>
        <ul class="list"> 
            <li v-for='(v,k) of items' :key="k">
                <img :src="v.url" alt="">
                <p v-text='v.name'></p>
            </li>
        </ul>
        <button class="logout" @click="loginout">退出登录</button>
    </div>
  </div>
</template>
<style scoped>
/* 登录前样式 */
.container {
  padding: 70px 20px 0;
  background: #fff;
}
.container > input {
  width: 100%;
  border: 0;
  height: 46px;
  font-size: 15px;
  border-bottom: 1px solid #ececec;
  color: #666;
  outline: 0;
  padding: 22.5px 0;
  box-sizing: border-box;
}
.container > button {
  width: 100%;
  margin-top: 30px;
  background: #b4282d;
  padding: 15px 0;
  border: 0;
  color: #fff;
  font-size: 15px;
  border-radius: 3px;
}
.container > div {
  display: flex;
  height: 46px;
  justify-content: space-between;
  align-items: center;
}
.container > div > a {
  text-decoration: none;
  color: #666;
  font-size: 13px;
}
/* 登录后样式 */
.account{
    background:#fff;
}
.user{
   height:140px;
   background: #000;
   display:flex;
   align-items:center;
   padding:15px;
   box-sizing: border-box;
}
.user>div{
    margin-left:15px;
    width:60%;
}
.member{
    margin-top:10px;
    display:flex;
}
.member>img{
    width:16px;
    height:16px;
}
.member>span{
    color:#B4A078;
}
.user_img{
    width:74px;
    height:74px;
    border-radius:50%;
}
.username{
    color:#fff;
    font-size:16px;
}
.qrCode{
    width:42px;
    height:42px;
}
/* 循环样式 */
.list{
    display:flex;
    background:#fff;
    font-size:12px;
    flex-wrap:wrap;
}
.list>li{
    height:94px;
    flex-basis:33.33%;
    text-align:center;
    padding-top:24px;
    box-sizing: border-box;
    border-bottom:1px solid #ccc;
    border-right:1px solid #ccc;
}
.list>li:nth-child(3n){
    border-right:0;
}
.list>li>img{
    width:26px;
    margin-bottom:5px;
}
.logout{
    background:#fff;
    margin-top:20px;
    height:50px;
    width:100%;
    outline:0;
    border:0;
    font-size:15px;
    padding:0;
}
</style>
<script>
export default {
  data() {
    return {
        uname:'',
        upwd:'',
        items:[
            {url:require('../assets/user/order.png'),name:'我的订单'},
            {url:require('../assets/user/address.png'),name:'地址管理'},
            {url:require('../assets/user/safe.png'),name:'账号安全'},
            {url:require('../assets/user/money.png'),name:'会员充值'},
            {url:require('../assets/user/contact.png'),name:'站内消息'},
            {url:require('../assets/user/fav.png'),name:'我的收藏'},
            {url:require('../assets/user/member.png'),name:'我的好友'},
            {url:require('../assets/user/giftCard.png'),name:'点卡充值'},
            {url:require('../assets/user/lead.png'),name:'邀请返利'}
        ]
    };
  },
  methods: {
    login() {
      this.axios
        .get("/user/login?uname=" + this.uname + "&upwd=" + this.upwd)
        .then((res) => {
            if (res.data.code == 1) {
              this.$store.commit('userLogin',res.data.uname);
              this.$store.commit('changeState');
            } 
        });
    },
    loginout(){
      this.$store.commit('changeState');
      this.$store.commit('userLoginout');
    }
  },
};
</script>
