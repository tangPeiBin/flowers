<template>
    <div class="main">
        <div class="categories">
            <div class="left_list">
                <ul>
                    <li class="active">鲜花分类</li>   
                </ul>    
            </div>
            <div class="right_main">
                <div class="product">
                    <p class="title">用途</p>
                    <div class="pro_list">
                        <ul>
                            <li v-for="(v,k) of uses" :key="k">
                                <a href="#">
                                    <img :src="v.img" alt="">
                                    <p v-text="v.name"></p>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <p class="title">花材</p>
                    <div class="pro_list">
                        <ul>
                            <li v-for="(v,k) of flowers" :key="k">
                                <a href="#">
                                    <img :src="v.img" alt="">
                                    <p v-text="v.name"></p>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <p class="title">类别</p>
                    <div class="pro_list">
                        <ul>
                            <li v-for="(v,k) of categories" :key="k">
                                <a href="#">
                                    <img :src="v.img" alt="">
                                    <p v-text="v.name"></p>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <p class="title">颜色</p>
                    <div class="pro_color_list">
                        <ul>
                            <li v-for="(v,k) of colors" :key="k">
                                <a href="#">
                                    <img :src="v.img" alt="">
                                    <p v-text="v.name"></p>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <p class="title">价格</p>
                    <div class="pro_color_list">
                        <ul>
                            <li v-for="(v,k) of prices" :key="k">
                                <a href="#">
                                    <p v-text="v.name"></p>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <p class="title">枝数</p>
                    <div class="pro_color_list">
                        <ul>
                            <li v-for="(v,k) of counts" :key="k">
                                <a href="#">
                                    <p v-text="v.name"></p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>
.categories{
    width:375px;
    display:flex;
    background:#fff;
    padding-top:16px;
    font-size:12px;
    padding-bottom:3rem;
}
/* 左边分类 */
.left_list{
    width:25%;
    background-color:rgba(245,245,245,.9);
}
.left_list>ul>li{
    width:100%;
    height:48px;
    line-height: 48px;
    text-align: center;
    background:#fff;
}
.left_list>ul>li.active{
    color:#F60;
}
/* 右边主区域 */
.right_main{
    padding:8px;
    width:75%;
}
.title{
    margin:19px 0 21px;
}
.pro_list>ul{
    display:flex;
    flex-wrap:wrap;
}
.pro_list>ul>li{
    width:88px;
    height:84px;
    text-align: center;
}
.pro_list>ul>li>a{
    text-decoration:none;
    color:#666;
}
.pro_list>ul>li>a>img{
    width:56px;
}
.pro_list>ul>li>a>p{
    margin:3px 0 5px;
}
/* 颜色列表 */
.pro_color_list>ul{
    display:flex;
    flex-wrap:wrap;
}
.pro_color_list>ul>li{
    width:88px;
    text-align: center;
    border-bottom:1px solid #ddd;
    border-left:1px solid #ddd;
    padding:10px 8px;
    box-sizing:border-box;
}
.pro_color_list>ul>li:first-child,.pro_color_list>ul>li:nth-child(2),.pro_color_list>ul>li:nth-child(3){
    border-top:1px solid #ddd;
}
.pro_color_list>ul>li:nth-child(3n){
    border-right:1px solid #ddd;
}
.pro_color_list>ul>li:last-child{
    border-right:1px solid #ddd;
}
.pro_color_list>ul>li>a{
    text-decoration:none;
    color:#666;
    display:flex;
}
.pro_color_list>ul>li>a>img{
    width:20px;
}
.pro_color_list>ul>li>a>p{
    width:100%;
    height:20px;
    line-height:20px;
    text-align:center;
}
</style>
<script>
export default  {
    data(){
        return {
            uses:[
                {url:"xxx",img:require("../assets/category/more_btn.png"),name:"全部"},
                {url:"xxx",img:require("../assets/category/aiqing.png"),name:"爱情鲜花"},
                {url:"xxx",img:require("../assets/category/youqing.png"),name:"友情鲜花"},
                {url:"xxx",img:require("../assets/category/birthday.png"),name:"生日鲜花"},
                {url:"xxx",img:require("../assets/category/zhangbei.png"),name:"问候长辈"},
                {url:"xxx",img:require("../assets/category/weddingcelebration.png"),name:"婚庆鲜花"},
                {url:"xxx",img:require("../assets/category/sympathy.png"),name:"探病慰问"},
                {url:"xxx",img:require("../assets/category/childbirth.png"),name:"祝贺鲜花"},
                {url:"xxx",img:require("../assets/category/daoqian.png"),name:"道歉鲜花"},
                {url:"xxx",img:require("../assets/category/aisi.png"),name:"商务鲜花"},
                {url:"xxx",img:require("../assets/category/kaiye.png"),name:"创意鲜花"},
                {url:"xxx",img:require("../assets/category/jingpin.png"),name:"特色鲜花"}           
            ],
            flowers:[
                {url:"xxx",img:require("../assets/category/redrose.png"),name:"红玫瑰"},          
                {url:"xxx",img:require("../assets/category/pinkrose.png"),name:"粉玫瑰"},          
                {url:"xxx",img:require("../assets/category/whiterose.png"),name:"白玫瑰"},          
                {url:"xxx",img:require("../assets/category/xiangbinrose.png"),name:"香槟玫瑰"},          
                {url:"xxx",img:require("../assets/category/purplerose.png"),name:"紫玫瑰"},          
                {url:"xxx",img:require("../assets/category/bluerose.png"),name:"蓝玫瑰"},          
                {url:"xxx",img:require("../assets/category/yellowrose.png"),name:"黄玫瑰"},          
                {url:"xxx",img:require("../assets/category/kangnaixin.png"),name:"康乃馨"},          
                {url:"xxx",img:require("../assets/category/baihe.png"),name:"百合"},          
                {url:"xxx",img:require("../assets/category/fulang.png"),name:"扶郎"},          
                {url:"xxx",img:require("../assets/category/matilian.png"),name:"郁金香"},          
                {url:"xxx",img:require("../assets/category/xiangrikui.png"),name:"向日葵"}          
            ],
            categories:[
                {url:"xxx",img:require("../assets/category/chuanqinghuashu.png"),name:"传情花束"},          
                {url:"xxx",img:require("../assets/category/jingzhihualan.png"),name:"新娘手花"},           
                {url:"xxx",img:require("../assets/category/pingchahua.png"),name:"商务用花"},           
                {url:"xxx",img:require("../assets/category/chuangyihuahe.png"),name:"创意花盒"}           
            ],
            colors:[
                {url:"xxx",img:require("../assets/category/color_03.png"),name:"红色"},           
                {url:"xxx",img:require("../assets/category/color_05.png"),name:"粉色"},           
                {url:"xxx",img:require("../assets/category/color_07.png"),name:"香槟色"},           
                {url:"xxx",img:require("../assets/category/color_09.png"),name:"黄色"},           
                {url:"xxx",img:require("../assets/category/color_11.png"),name:"白色"},           
                {url:"xxx",img:require("../assets/category/color_13.png"),name:"紫色"},           
                {url:"xxx",img:require("../assets/category/color_15.png"),name:"蓝色"}           
            ],
            prices:[
                {url:"xxx",name:"特价鲜花"},           
                {url:"xxx",name:"150元以下"},           
                {url:"xxx",name:"150-250元"},           
                {url:"xxx",name:"250-350元"},           
                {url:"xxx",name:"350-550元"},           
                {url:"xxx",name:"550-800元"}           
            ],
            counts:[
                {url:"xxx",name:"9枝"},           
                {url:"xxx",name:"10枝"},           
                {url:"xxx",name:"11枝"},           
                {url:"xxx",name:"12枝"},           
                {url:"xxx",name:"16枝"},           
                {url:"xxx",name:"18枝"},           
                {url:"xxx",name:"19枝"},           
                {url:"xxx",name:"20枝"},           
                {url:"xxx",name:"22枝"},           
                {url:"xxx",name:"29枝"},           
                {url:"xxx",name:"33枝"},           
                {url:"xxx",name:"36枝"},           
                {url:"xxx",name:"50枝"},           
                {url:"xxx",name:"66枝"},           
                {url:"xxx",name:"99枝以上"}          
            ]
        }
    }
}
</script>