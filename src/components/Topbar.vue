<template>
    <div class="topbar">
        <div class="topmenu">
            <img src="../assets/menu.png" alt="" @click="changeState">
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
        <div class="menu " :class="isHidden">           
            <ul class="list">
                <li class="item">
                    <router-link to="/">
                        <img src="../assets/house.jpg" alt="">
                        <p>首页</p>
                    </router-link>
                </li>
                <li class="item">
                    <router-link to="/category">
                        <img src="../assets/cate.jpg" alt="">
                        <p>分类</p>
                    </router-link>
                </li>
                <li class="item">
                    <router-link to="/login">
                        <img src="../assets/profile.jpg" alt="">
                        <p>个人</p>
                    </router-link>
                </li>
            </ul>
        </div>
    </div>
</template>
<style scoped>
/*顶部样式*/
.topbar{
  width:375px;
  margin:0 auto;
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
.topmenu>img{
    width:26px;
    margin-top:6px;
    margin-left:8px;
}
.topmenu>a{
    position: absolute;
    width:90px;
    left:50%;
    margin-left:-45px;
    top:10px;
}
.topmenu>a>img{
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
/* 隐藏导航栏 */
.menu{
    font-size:12px;
    background:#fafafa;
    display:block;
    z-index:999;
    position: relative;
}
.menu-isHidden{
    display:none;
}
.list{
    display:flex;
    justify-content: space-around;
    height:60px;
    align-items:center;
    width:260px;
    margin:0 auto;
}
.item{
    height:42px;
}
.item>a{
    text-decoration: none;
    
}
.item>a>img{
    width:25px;
}
</style>
<script>
export default {
    data(){
        return {
            isHidden:'menu-isHidden'
        }
    },
    methods:{
        changeState(){
            if(this.isHidden){
                this.isHidden='';
            }else{
                this.isHidden='menu-isHidden'
            }    
        }
    }
}
</script>