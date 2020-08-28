<template>
    <div>
        <my-topbar></my-topbar>
        <div class="container">
            <input type="text" placeholder="用户账号" v-model="uname">
            <input type="password" placeholder="密码" v-model="upwd">
            <input type="password" placeholder="重复密码" v-model="upwd2">
            <input type="text" placeholder="您的电话" v-model="phone">
            <button @click="register">确认注册</button>
            <div>
                <router-link to="/login">会员登录</router-link>
                <router-link to="/findpassword">忘记密码?</router-link>
            </div>
        </div>
    </div>
</template>
<style scoped>
.container{
    padding:70px 20px 0;
    background:#fff;
}
.container>input{
    width:100%;
    border:0;
    height:46px;
    font-size:15px;
    border-bottom:1px solid #ECECEC;
    color:#666;
    outline:0;
    padding:22.5px 0;
    box-sizing:border-box;
}
.container>button{
    width:100%;
    margin-top:30px;
    background:#b4282D;
    padding:15px 0;
    border:0;
    color:#fff;
    font-size:15px;
    border-radius:3px;
}
.container>div{
    display:flex;
    height:46px;
    justify-content: space-between;
    align-items:center;
}
.container>div>a{
    text-decoration:none;
    color:#666;
    font-size:13px;
}
</style>
<script>
export default{
    data(){
        return {
            uname:'',
            upwd:'',
            upwd2:'',
            phone:''
        }
    },
    methods:{
        register(){
            let unameRegExp=/^\w{6,18}$/;
            let upwdRegExp=/^\w{6,18}$/;
            let phoneRegExp=/^1[3-9]\d{9}$/;           
            if(unameRegExp.test(this.uname)&&upwdRegExp.test(this.upwd)&&phoneRegExp.test(this.phone)&&this.upwd==this.upwd2){
                let obj=`uname=${uname}&upwd=${upwd}&phone=${phone}`;
                this.axios.post('/user/register',obj).then(res=>{
                    if(res.data.code==1){
                        this.router.push('/login');
                    }
                });
            }else{
                this.$toast('请输入合法信息！');
            }
        }
    }
}
</script>