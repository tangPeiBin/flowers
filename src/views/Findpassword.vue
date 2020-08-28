<template>
    <div>
        <my-topbar></my-topbar>
        <div class="container">
            <input type="text" placeholder="用户账号">
            <input type="text" placeholder="邮箱">
            <input type="text" placeholder="验证码">
            <button>找回密码</button>
            <div class="links">
                <router-link to="/login">会员登录</router-link>
                <router-link to="/register">会员注册</router-link>
            </div>
            <div class="others">
                <div>其他方式登录</div>
                <div>
                    <a href="#"><img src="../assets/qq.png" alt=""></a>
                    <a href="#"><img src="../assets/sina.png" alt=""></a>
                </div>
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
.links{
    display:flex;
    height:46px;
    justify-content: space-between;
    align-items:center;
}
.links>a{
    text-decoration:none;
    color:#666;
    font-size:13px;
}
/* 其他登录方式 */
.others{
    margin-top:20px;
}
.others>div:first-child{
    text-align: center;
    font-size:14px;
    color:#aaa;
    margin-bottom:20px;
}
.others>div:nth-child(2){
    display:flex;
    justify-content: space-around;
    width:35%;
    margin:0 auto;

}
.others>div:nth-child(2) img{
    height:22px;
}
</style>