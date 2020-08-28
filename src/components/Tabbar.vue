<template>
    <div>
        <nav class="tabbar">
      <div class="tabbar-item active">
        <a href="#">
          <i class="iconfont iconfont-home"></i>
          <p>首页</p>
        </a>
      </div>
      <div class="tabbar-item">
        <router-link to="/category">
          <i class="iconfont iconfont-category"></i>
          <p>分类</p>
        </router-link>
      </div>
      <div class="tabbar-item">
        <router-link to="/cart">
          <i class="iconfont iconfont-shopcart"></i>
          <p>购物车</p>
        </router-link>
      </div>
      <div class="tabbar-item">
        <router-link to="/login">
          <i class="iconfont iconfont-smile"></i>
          <p>我的</p>
        </router-link>
      </div>
    </nav>
    </div>
</template>
<style scoped>
/* 底部导航栏 */
.tabbar{
  height:3rem;
  width:100%;
  background:#F7F9FA;
  display:flex;
  justify-content: space-around;
  align-items:center;
  position: fixed;
  bottom:0;
  left:0;
  font-size:14px;
  color:#232628;
}
.tabbar-item>a{
  color:#232628;
  display:inline-block;
  text-align: center;
  text-decoration: none;
}
.tabbar>.active>a{
  color:#FF734C;
}
.tabbar-item>a>i{
  font-size:24px;
}
.tabbar-item>a>p{
  font-size:12px;
}
</style>>
