<template>
    <div>
        <header>
            <img src="../assets/logo.png" alt="">
            <div>
                <img src="../assets/detail/kf.png" alt="">
                <a href="#">客服电话:400-629-8269</a>
            </div>
        </header>
        <van-swipe class="my-swipe" :autoplay="4000" height='180' indicator-color="white">
            <van-swipe-item><img src="../assets/m_1.jpg"></van-swipe-item>
            <van-swipe-item><img src="../assets/m_2.jpg"></van-swipe-item>
            <van-swipe-item><img src="../assets/m_3.jpg"></van-swipe-item>
            <van-swipe-item><img src="../assets/m_4.jpg"></van-swipe-item>
        </van-swipe>
        <div class="container">
            <h2 class="title">鲜花</h2>
            <ul class="lists">
                <li v-for="(v,k) of lists" :key="k">
                    <div class="lists-info">
                        <img :src="v.image" alt="">
                        <p class="price">￥{{v.price_online}} <del>门店价:{{v.price_offline}}</del> </p>
                    </div>
                    <div v-text="v.title" class="name"></div>
                </li>
            </ul>
            <my-tabbar></my-tabbar>
        </div>
    </div>
</template>
<style scoped>
/* 顶部样式 */
header{
    height:45px;
    padding:7.5px 15px;
    box-sizing: border-box;
    display:flex;
    background:#fff;
    align-items:center;
}
header>img{
    height:30px;
    margin-right:10px;
}
header>div{
    background:#EDEDED;
    height:28px;
    width:100%;
    display:flex;
    justify-content: center;
    align-items: center;
    border-radius:3px;
}
header>div>img{
    width:14px;
    height:14px;
}
header>div>a{
    font-size:14px;
    color:#666;
}
/* 轮播 */
.my-swipe img{
    width:100%;
}
.title{
    height:60px;
    background:#fff;
    text-align: center;
    font-size:16px;
    color:#333;
    line-height:60px;
}
/* 查询结果 */
.container{
    margin-bottom:50px;
}
.lists{
    display:flex;
    flex-wrap:wrap;
    background:#fff;
}
.lists>li{
    padding:0 7.5px;
    width:50%;
    box-sizing: border-box;
    margin-bottom:10px;
}
.lists-info{
    width:172.5px;
    position: relative;
}
.lists-info>img{
    width:100%;
    height:172.5px;
}
.price{
    height:30px;
    line-height:30px;
    position:absolute;
    width:100%;
    background:#F1ECE2;
    font-size:14px;
    color:#B4282D;
    padding-left:10px;
    box-sizing: border-box;
    bottom:0;
}
.price>del{
    font-size:12px;
    color:#9C9C9C;
    margin-left:8px;
}
.name{
    font-size:14px;
    padding:15px 0 0 5px;
    height:14px;
    overflow: hidden;
}
</style>
<script>
export default {
    data(){
        return {
            lists:[]
        }
    },
    mounted(){
        let familyId = this.$route.params.familyId;
        this.axios.get('/product/searchfamily?familyId='+familyId).then(res=>{
            let data=res.data;
            data.forEach(item=>{
                item.image=require('../assets/home/'+item.image);
                this.lists.push(item);
            });
        });
    }
}
</script>