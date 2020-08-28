<template>
    <div>
        <div class="topbar">
            <div class="topmenu">
                <router-link to="/">
                    <img src="../assets/detail/menu.png" alt="">
                </router-link>
                <a href="#">
                    <img src="../assets/logo.png" alt="">
                </a>
                <div class="right">
                    <a href="#" class="search">
                        <img src="../assets/search1.png" alt="">
                    </a>
                    <router-link to="/cart" class="cart">
                        <img src="../assets/cart.png" alt="">
                    </router-link>
                </div>
            </div>
        </div>
        <div class="info-picture">
            <img :src="detail.image" alt="">
        </div>
        <div class="m-detailBaseInfo">
            <div class="content">
                <div class="info">
                    <div class="name">{{detail.title}}</div>
                    <div class="desc">
                        <span class="price">￥{{detail.price_online}}</span>
                        <span class="namess">七夕情人节（8.21号~8.27号配送）</span>
                    </div>
                </div>
                <div class="comment">
                    <p class="num">183</p>
                    <p class="com">用户评价</p>
                    <div class="more">
                        <a href="#">查看</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="m-service">
            <div class="service">服务:</div>
            <div class="service-item">
                <ul>
                    <li>当日新鲜花材</li>
                    <li>指定日期送达</li>
                    <li>专注鲜花14年</li>
                    <li>同城三小时送达</li>
                </ul>
            </div>
            <a href="#"><img src="../assets/detail/address-right.png" alt=""></a>
        </div>
        <div class="m-itemDetail">
            <div class="title">商品详情</div>
            <p class="itemDetail"><span>编号：</span><span>{{detail.pid}}</span></p>
            <p class="itemDetail"><span>花材：</span><span>{{detail.createby}}</span></p>
            <p class="itemDetail"><span>包装：</span><span>{{detail.packing}}</span></p>
            <p class="itemDetail"><span>花语：</span><span>{{detail.desc_msg}}</span></p>
            <p class="itemDetail"><span>配送：</span><span>可全国配送，市区免费</span></p>
            <p class="itemDetail"><span>小贴士</span><span> 鲜花产品您至少应提前3小时下订单，我们保证按时送达；为了能够有充分的时间准备，我们建议您尽早预定。</span></p>
        </div>
        <div class="m-picture">
            <img v-for="(v,k) of detail.images" :key="k" :src="v" alt="">
        </div>
        <div class="m-btnGroup">
            <div class="inner">
                <a href="#"><img src="../assets/detail/kf.png" alt=""></a>
                <a href="#"  >1对1在线客服</a>
                <a @click="addCart">立即购买</a>
            </div>
        </div>
    </div>
</template>
<style scoped>
/*顶部样式*/
.topbar{
  width:100%;
  height:3rem;
  background:#fafafa;
}
.topmenu{
    position: relative;
    height:100%;
    padding:5px;
    box-sizing:border-box;
    border-bottom:1px solid #ddd;
}
.topmenu>a:first-child{  
    margin-left:8px;
}
.topmenu>a:first-child>img{
    width:26px;
    margin-top:6px;
}
.topmenu>a:nth-child(2){
    position: absolute;
    width:90px;
    left:50%;
    margin-left:-45px;
    top:10px;
}
.topmenu>a:nth-child(2)>img{
    width:100%;
}
/* 右浮动的两个图标 */
.right{
    float:right;
    width:5rem;
    display: flex;
    height:33px;
    justify-content: space-between;
    margin-top:3px;
}
.right>a>img{
    width:33px;
}
/* 详细基本信息 */
.m-detailBaseInfo{
    padding:20px 0 20px 15px;
    background:#fff;
    border-bottom:10px solid #f4f4f4;
}
.content{
    display:flex;
    font-size:12px;  
}
/* 左侧 */
.info{
    border-right:1px dashed #ccc; 
}
.name{
    font-size:18px;
    color:#333;
    margin-bottom:5px;
}
.price{
    font-size:17px;
    font-weight:bold;
    color:#f60;
}
.namess{
    color:#7f7f7f;
    font-size:14px;
    margin-left:5px;
}
/* 右侧 */
.comment{
    width:78px;
    text-align:center;
}
.num{
    color:#B4282D;
    font-size:18px;
    font-weight:bold;
    margin-bottom:5px;
}
.com{
    color:#B4282D;
    font-size:13px;
    margin-bottom:5px;
}
.more>a{
    display:inline-block;
    text-decoration: none;
    color:#666;
    padding:4px 14px;
    border:1px solid #ccc;
}
/* 服务 */
.m-service{
    display:flex;
    background:#fff;
    border-bottom:10px solid #f4f4f4;
    padding:10px 0 10px 15px;
    font-size:14px;
}
.service{
    width:15%;
    color:#333;
}
/* 服务项目 */
.service-item{
    width:75%;
    color:#7f7f7f;
}
.service-item>ul{
    width:100%;
    display:flex;
    flex-wrap:wrap;
}
.service-item>ul>li{
    flex-basis:50%;
    margin-bottom:10px;
    padding-left:10px;
    box-sizing:border-box;
    position: relative;
}
/* 前加点 */
.service-item>ul>li::after{
    content:'';
    display:block;
    width:5px;
    height:5px;
    background:#B4282D;
    position:absolute;
    left:0;
    bottom:5px;
    border-radius:50%;
}
/* 右边链接 */
.m-service>a{
    align-self:center;
}
.m-service>a>img{
    width:25px;
}
/* 商品详情 */
.m-itemDetail{
    background:#fff;
    padding:15px;
    font-size:12px;
    color:#333;
}
.title{
    font-size:14px;
    padding:20px 0 12px;
}
.itemDetail{
    padding:5px 15px 5px 0;
    border-top:1px dashed #ddd;
    line-height:20px;
    display:flex;
}
.itemDetail>span:first-child{
    flex:1;
    color:#999;
}
.itemDetail>span:nth-child(2){
    flex:3;
}
/* 底部按钮组 */
.m-btnGroup{
    position:fixed;
    bottom:0;
    left:0;
    width:100%;
}
.inner{
    display:flex;
    height:48px;
    border:1px solid #ddd;
}
.inner>a:first-child{
    flex:1;
    text-align:center;
    display:inline-block;
    height:100%;
    line-height: 48px;
    border-right:1px solid #ddd;
    background:#fff;
}
.inner>a:first-child>img{
    width:30px;
    vertical-align: middle;
}
.inner>a:nth-child(2){
    background:#fff;
}
.inner>a:nth-child(2),.inner>a:nth-child(3){
    flex:2;
    display:inline-block;
    text-align:center;
    height:100%;
    line-height:48px;
    text-decoration:none;
    color:#333;
    font-size:14px;
}
.inner>a:nth-child(3){
    background:#B4282D;
    color:#fff;
    border-radius:3px;
}
/* 图片 */
.info-picture{
    width:100%;
}
.info-picture>img{
    width:100%;
}
.m-picture{
    width:100%;
    margin-bottom:50px;
}
.m-picture>img{
    width:100%;
}
</style>
<script>
export default{
    data(){
        return {
            detail:{}
        }
    },
    methods:{
        addCart(){
            let title=this.detail.title;
            this.axios.get('/product/searchcart?title='+title).then(res=>{
                if(res.data.code==1){//判断购物车中是否存在
                    let count=res.data.result.count+1; 
                    this.axios.put('/product/addcount',`title=${title}&count=${count}`).then(res=>{
                        if(res.data.code==1){
                            this.$router.push('/cart');
                        }
                    });
                }else{
                    let price=this.detail.price_online;
                    let image=this.detail.image;
                    this.axios.post('/product/addcart',`title=${title}&price=${price}&image=${image}&count=1`).then(res=>{
                        if(res.data.code==1){
                            this.$router.push('/cart');
                        }
                    });    
                }
            });         
        }
    },
    mounted(){
        //详情页获取 
        let id = this.$route.params.id;
        this.axios.get('/product/detail?id='+id).then(res=>{
            var data=res.data[0];
            data.num= 1;
            data.image=require('../assets/home/'+data.image);
            data.images=data.images.split('|');
            data.images=data.images.map(item=>{
                return require('../assets/detail/'+item);
            });
            this.detail=data;
        });
    }
    
}
</script>