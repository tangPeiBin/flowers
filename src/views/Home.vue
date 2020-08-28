<template>
  <div class="home">
    <header>
      <div class="headerbar-left">
        <a href="#">
          <i class="iconfont iconfont-category"></i>
        </a>
      </div>
      <div class="headerbar-log">
        <img src="../assets/home/m_hualogo.png" alt />
      </div>
      <div class="headerbar-right">
        <a href="#">
          <i class="iconfont iconfont-service"></i>
        </a>
      </div>
    </header>
    <van-swipe class="my-swipe" :autoplay="4000" height="180" indicator-color="white">
      <van-swipe-item>
        <img src="../assets/home/18_birthday_m.jpg" />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/home/18_youflower_m.jpg" />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/home/19_banner_sheshou_m.jpg" />
      </van-swipe-item>
    </van-swipe>
    <div class="company-info">
      <div class="company-info-item">认证企业</div>
      <div class="company-info-item">十四年品牌</div>
      <div class="company-info-item">三小时送花</div>
      <div class="company-info-item">
        最近
        <u id="commenCount">54520</u>条好评
      </div>
    </div>
    <nav class="procate">
      <div class="procate-item">
        <router-link to="/categories/1" class="navigation">
          <img src="../assets/home/m_home_category_flower.png" alt />
          <p>鲜花</p>
        </router-link>
      </div>
      <div class="procate-item">
        <router-link to="/categories/2" class="navigation">
          <img src="../assets/home/m_home_category_ppf.png" alt />
          <p>友情</p>
        </router-link>
      </div>
      <div class="procate-item">
        <router-link to="categories/3" class="navigation">
          <img src="../assets/home/m_home_category_cake.png" alt />
          <p>生日</p>
        </router-link>
      </div>
      <div class="procate-item">
        <router-link to="categories/8" class="navigation">
          <img src="../assets/home/m_home_category_gift.png" alt />
          <p>创意</p>
        </router-link>
      </div>
      <div class="procate-item">
        <router-link to="categories/5" class="navigation">
          <img src="../assets/home/m_home_category_chocolate.png" alt />
          <p>特色</p>
        </router-link>
      </div>
    </nav>
    <section class="scene">
      <div class="modetitle">一秒选花</div>
      <div class="scene-list">
        <div class="scene-item">
          <router-link to="/categories/1">
            <img src="../assets/home/m_home_use_lover.png" alt="送恋人" />
            <span>爱情鲜花</span>
          </router-link>
        </div>
        <div class="scene-item">
          <router-link to="/categories/4">
            <img src="../assets/home/m_home_use_elder.png" alt="送恋人" />
            <span>长辈鲜花</span>
          </router-link>
        </div>
        <div class="scene-item">
          <router-link to="/categories/2">
            <img src="../assets/home/m_home_use_friends.png" alt="送恋人" />
            <span>友情鲜花</span>
          </router-link>
        </div>
      </div>
      <div class="scene-list">
        <div class="scene-item">
          <router-link to="/categories/2">
            <img src="../assets/home/m_home_use_birthday2.png" alt />
            <span class="scene-item-title">生日鲜花</span>
          </router-link>
        </div>
        <div class="scene-item">
          <router-link to="/categories/1">
            <img src="../assets/home/m_home_use_profess2.png" alt />
            <span class="scene-item-title">追女神器</span>
          </router-link>
        </div>
        <div class="scene-item">
          <router-link to="/categories/7">
            <img src="../assets/home/m_home_use_business2.png" alt />
            <span class="scene-item-title">开业商务</span>
          </router-link>
        </div>
        <div class="scene-item">
          <router-link to="/categories/6">
            <img src="../assets/home/m_home_use_anniversary2.png" alt />
            <span class="scene-item-title">祝贺鲜花</span>
          </router-link>
        </div>
      </div>
      <div class="scene-list">
        <router-link to="categories/1">
          <p class="scene-item-name">热销榜</p>
          <p class="scene-item-desc">集万千宠爱</p>
          <div class="scene-item-bottom">
            <span class="scene-item-bottom-label">创意花盒</span>
            <span class="scene-item-bottom-text">热销鲜花</span>
          </div>
        </router-link>
        <router-link to="/categories/1">
          <p class="scene-item-name">特价专区</p>
          <p class="scene-item-desc">超值好货</p>
          <div class="scene-item-bottom">
            <span class="scene-item-bottom-label">经典花束</span>
            <span class="scene-item-bottom-text">大家都爱买</span>
          </div>
        </router-link>
      </div>
      <div class="scene-list last-list">
        <div class="scene-item">
          <router-link to="/categories/1">
            <img src="../assets/home/m_home_category_new2.png" alt />
            <p>新品来袭</p>
          </router-link>
        </div>
        <div class="scene-item">
          <router-link to="/categories/5">
            <img src="../assets/home/m_home_category_quality2.png" alt />
            <p>品味之选</p>
          </router-link>
        </div>
        <div class="scene-item">
          <router-link to="/categories/6">
            <img src="../assets/home/m_home_category_you2.png" alt />
            <p>设计师臻选</p>
          </router-link>
        </div>
      </div>
    </section>
    <section class="product">
      <h3 class="product-title">- 精品优选 -</h3>
      <div class="product-list" v-for="(v,k) of boutiques" :key="k">
        <div class="product-item">
          <router-link :to="'/detail/'+v.fid">
            <div class="product-item-pic">
              <img :src="v.image" alt />
            </div>
            <div class="product-item-info">
              <p class="product-item-info-name" v-text="v.familyName"></p>
              <p class="product-item-info-desc" v-text="v.title"></p>
              <div class="product-item-info-tags">
                <span class="tag-promo">精品优选</span>
              </div>
              <div class="product-item-info-promo" v-text="v.desc_msg"></div>
              <div class="product-item-info-bottom">
                <div class="product-item-info-bottom-left">
                  <p class="product-item-info-prices">
                    <strong v-text="`￥${v.price_online.toFixed(2)}`"></strong>
                    <s v-text="`￥${v.price_offline.toFixed(2)}`"></s>
                  </p>
                  <p class="product-item-info-sales" v-text="`已销售${v.saleCount}束`"></p>
                </div>
                <div class="product-item-info-bottom-right">
                  <i class="iconfont iconfont-buy"></i>
                </div>
              </div>
            </div>
          </router-link>
        </div>
      </div>
      <div class="product-more">
        <a href="#">查看更多</a>
      </div>
    </section>
    <section class="product">
      <h3 class="product-title">爱情鲜花推荐</h3>
      <div class="product-list-vertical">
        <div class="product-item-vertical" v-for="(v,k) of flowers_for_love" :key="k">
          <router-link :to="'/detail/'+v.fid">
            <div class="product-item-vertical-pic">
              <img :src="v.image" alt />
            </div>
            <div class="product-item-vertical-info">
              <div class="product-item-vertical-info-tags">
                <span class="vertical-tag-promo" v-text="v.familyName"></span>
              </div>
              <p class="product-item-vertical-info-name" v-text="v.title"></p>
              <div class="product-item-vertical-info-bottom">
                <div class="product-item-vertical-info-bottom-left">
                  <p class="product-item-vertical-info-prices">
                    <strong v-text="`￥${v.price_online.toFixed(2)}`"></strong>
                    <s v-text="`门店价￥${v.price_offline.toFixed(2)}`"></s>
                  </p>
                  <p class="product-item-vertical-info-sales" v-text="`已销售${v.saleCount}束`"></p>
                </div>
                <div class="product-item-vertical-info-bottom-right">
                  <i class="iconfont iconfont-buy"></i>
                </div>
              </div>
            </div>
          </router-link>
        </div>
      </div>
      <div class="product-more">
        <a href="#">查看更多</a>
      </div>
    </section>
    <section class="product">
      <h3 class="product-title">友情鲜花推荐</h3>
      <div class="product-list-vertical">
        <div class="product-item-vertical" v-for="(v,k) of flowers_for_friend" :key="k">
          <router-link :to="'/detail/'+v.fid">
            <div class="product-item-vertical-pic">
              <img :src="v.image" alt />
            </div>
            <div class="product-item-vertical-info">
              <div class="product-item-vertical-info-tags">
                <span class="vertical-tag-promo" v-text="v.familyName"></span>
              </div>
              <p class="product-item-vertical-info-name" v-text="v.title"></p>
              <div class="product-item-vertical-info-bottom">
                <div class="product-item-vertical-info-bottom-left">
                  <p class="product-item-vertical-info-prices">
                    <strong v-text="`￥${v.price_online.toFixed(2)}`"></strong>
                    <s v-text="`门店价￥${v.price_offline.toFixed(2)}`"></s>
                  </p>
                  <p class="product-item-vertical-info-sales" v-text="`已销售${v.saleCount}束`"></p>
                </div>
                <div class="product-item-vertical-info-bottom-right">
                  <i class="iconfont iconfont-buy"></i>
                </div>
              </div>
            </div>
          </router-link>
        </div>
      </div>
      <div class="product-more">
        <a href="#">查看更多</a>
      </div>
    </section>
    <section class="product">
      <h3 class="product-title">生日鲜花推荐</h3>
      <div class="product-list-vertical">
        <div class="product-item-vertical" v-for="(v,k) of flowers_for_birthday" :key="k">
          <router-link :to="'/detail/'+v.fid">
            <div class="product-item-vertical-pic">
              <img :src="v.image" alt />
            </div>
            <div class="product-item-vertical-info">
              <div class="product-item-vertical-info-tags">
                <span class="vertical-tag-promo" v-text="v.familyName"></span>
              </div>
              <p class="product-item-vertical-info-name" v-text="v.title"></p>
              <div class="product-item-vertical-info-bottom">
                <div class="product-item-vertical-info-bottom-left">
                  <p class="product-item-vertical-info-prices">
                    <strong v-text="`￥${v.price_online.toFixed(2)}`"></strong>
                    <s v-text="`门店价￥${v.price_offline.toFixed(2)}`"></s>
                  </p>
                  <p class="product-item-vertical-info-sales" v-text="`已销售${v.saleCount}束`"></p>
                </div>
                <div class="product-item-vertical-info-bottom-right">
                  <i class="iconfont iconfont-buy"></i>
                </div>
              </div>
            </div>
          </router-link>
        </div>
      </div>
      <div class="product-more">
        <a href="#">查看更多</a>
      </div>
    </section>
    <section class="product">
      <h3 class="product-title">长辈/老师 推荐</h3>
      <div class="product-list-vertical">
        <div class="product-item-vertical" v-for="(v,k) of flowers_for_senior" :key="k">
          <router-link :to="'/detail/'+v.fid">
            <div class="product-item-vertical-pic">
              <img :src="v.image" alt />
            </div>
            <div class="product-item-vertical-info">
              <div class="product-item-vertical-info-tags">
                <span class="vertical-tag-promo" v-text="v.familyName"></span>
              </div>
              <p class="product-item-vertical-info-name" v-text="v.title"></p>
              <div class="product-item-vertical-info-bottom">
                <div class="product-item-vertical-info-bottom-left">
                  <p class="product-item-vertical-info-prices">
                    <strong v-text="`￥${v.price_online.toFixed(2)}`"></strong>
                    <s v-text="`门店价￥${v.price_offline.toFixed(2)}`"></s>
                  </p>
                  <p class="product-item-vertical-info-sales" v-text="`已销售${v.saleCount}束`"></p>
                </div>
                <div class="product-item-vertical-info-bottom-right">
                  <i class="iconfont iconfont-buy"></i>
                </div>
              </div>
            </div>
          </router-link>
        </div>
      </div>
      <div class="product-more">
        <a href="#">查看更多</a>
      </div>
    </section>
    <section class="product">
      <h3 class="product-title">创意鲜花推荐</h3>
      <div class="product-list-vertical">
        <div class="product-item-vertical" v-for="(v,k) of flowers_for_creation" :key="k">
          <router-link :to="'/detail/'+v.fid">
            <div class="product-item-vertical-pic">
              <img :src="v.image" alt />
            </div>
            <div class="product-item-vertical-info">
              <div class="product-item-vertical-info-tags">
                <span class="vertical-tag-promo" v-text="v.familyName"></span>
              </div>
              <p class="product-item-vertical-info-name" v-text="v.title"></p>
              <div class="product-item-vertical-info-bottom">
                <div class="product-item-vertical-info-bottom-left">
                  <p class="product-item-vertical-info-prices">
                    <strong v-text="`￥${v.price_online.toFixed(2)}`"></strong>
                    <s v-text="`门店价￥${v.price_offline.toFixed(2)}`"></s>
                  </p>
                  <p class="product-item-vertical-info-sales" v-text="`已销售${v.saleCount}束`"></p>
                </div>
                <div class="product-item-vertical-info-bottom-right">
                  <i class="iconfont iconfont-buy"></i>
                </div>
              </div>
            </div>
          </router-link>
        </div>
      </div>
      <div class="product-more">
        <a href="#">查看更多</a>
      </div>
    </section>
    <section class="product">
      <h3 class="product-title">特色鲜花推荐</h3>
      <div class="product-list-vertical">
        <div class="product-item-vertical" v-for="(v,k) of flowers_for_special" :key="k">
          <router-link :to="'/detail/'+v.fid">
            <div class="product-item-vertical-pic">
              <img :src="v.image" alt />
            </div>
            <div class="product-item-vertical-info">
              <div class="product-item-vertical-info-tags">
                <span class="vertical-tag-promo" v-text="v.familyName"></span>
              </div>
              <p class="product-item-vertical-info-name" v-text="v.title"></p>
              <div class="product-item-vertical-info-bottom">
                <div class="product-item-vertical-info-bottom-left">
                  <p class="product-item-vertical-info-prices">
                    <strong v-text="`￥${v.price_online.toFixed(2)}`"></strong>
                    <s v-text="`门店价￥${v.price_offline.toFixed(2)}`"></s>
                  </p>
                  <p class="product-item-vertical-info-sales" v-text="`已销售${v.saleCount}束`"></p>
                </div>
                <div class="product-item-vertical-info-bottom-right">
                  <i class="iconfont iconfont-buy"></i>
                </div>
              </div>
            </div>
          </router-link>
        </div>
      </div>
      <div class="product-more">
        <a href="#">查看更多</a>
      </div>
    </section>
    <section class="product">
      <h3 class="product-title">商务开业推荐</h3>
      <div class="product-list-vertical">
        <div class="product-item-vertical" v-for="(v,k) of flowers_for_business" :key="k">
          <router-link :to="'/detail/'+v.fid">
            <div class="product-item-vertical-pic">
              <img :src="v.image" alt />
            </div>
            <div class="product-item-vertical-info">
              <div class="product-item-vertical-info-tags">
                <span class="vertical-tag-promo" v-text="v.familyName"></span>
              </div>
              <p class="product-item-vertical-info-name" v-text="v.title"></p>
              <div class="product-item-vertical-info-bottom">
                <div class="product-item-vertical-info-bottom-left">
                  <p class="product-item-vertical-info-prices">
                    <strong v-text="`￥${v.price_online.toFixed(2)}`"></strong>
                    <s v-text="`门店价￥${v.price_offline.toFixed(2)}`"></s>
                  </p>
                  <p class="product-item-vertical-info-sales" v-text="`已销售${v.saleCount}束`"></p>
                </div>
                <div class="product-item-vertical-info-bottom-right">
                  <i class="iconfont iconfont-buy"></i>
                </div>
              </div>
            </div>
          </router-link>
        </div>
      </div>
      <div class="product-more">
        <a href="#">查看更多</a>
      </div>
    </section>
    <section class="brand">
      <h3 class="brand-title">为什么选择我们</h3>
      <div class="brand-list">
        <div class="brand-item">
          <img src="../assets/home/m_details_brand_01.png" alt="获评鲜花龙头企业" />
          <p>获评鲜花龙头企业</p>
        </div>
        <div class="brand-item">
          <img src="../assets/home/m_details_brand_02.png" alt="1~3小时送花上门" />
          <p>1~3小时送花上门</p>
        </div>
        <div class="brand-item">
          <img src="../assets/home/m_details_brand_03.png" alt="赛事冠军华裔师团队" />
          <p>赛事冠军华裔师团队</p>
        </div>
        <div class="brand-item">
          <img src="../assets/home/m_details_brand_04.png" alt="严选花材" />
          <p>严选花材</p>
        </div>
        <div class="brand-item">
          <img src="../assets/home/m_details_brand_05.png" alt="12道严苛品控标准" />
          <p>12道严苛品控标准</p>
        </div>
        <div class="brand-item">
          <img src="../assets/home/m_details_brand_06.png" alt="500万用户信赖好评" />
          <p>500万用户信赖好评</p>
        </div>
      </div>
    </section>
    <footer class="footer">
      <ul class="footer-link">
        <li class="footer-link-item">
          <a href="#" title="鲜花导购">鲜花导购</a>
        </li>
        <li class="footer-link-item">
          <router-link to="/category" title="所有分类">所有分类</router-link>
        </li>
        <li class="footer-link-item">
          <a href="#" title="同城鲜花">同城鲜花</a>
        </li>
        <li class="footer-link-item">
          <a href="#" title="花语大全">花语大全</a>
        </li>
        <li class="footer-link-item">
          <a href="#" title="我们优势">我们优势</a>
        </li>
        <li class="footer-link-item">
          <a href="#" title="感动瞬间">感动瞬间</a>
        </li>
        <li class="footer-link-item">
          <a href="#" title="售后服务">售后服务</a>
        </li>
        <li class="footer-link-item">
          <a href="#" title="企业文化">企业文化</a>
        </li>
      </ul>
      <div class="footer-entry">
        <a href="#">
          <i class="iconfont iconfont-iphone"></i>
          <p>客户端</p>
        </a>
        <a href="#">
          <i class="iconfont iconfont-service"></i>
          <p>客服</p>
        </a>
      </div>
      <p class="footer-copyright">
        COPYRIGHT © 2006~2020 在线花店（WWW.ZXHD.COM）版权所有
        <br />
        <a href="#">蜀ICP备14006796</a>
      </p>
    </footer>
    <my-tabbar></my-tabbar>
  </div>
</template>
<style scoped>
.home {
  max-width: 375px;
  margin: 0 auto;
}
/*顶部样式*/
header {
  width: 100%;
  height: 3rem;
  background: #435448;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.headerbar-left > a {
  text-decoration: none;
}
.headerbar-left > a > i::before {
  font-size: 1.5rem;
  color: #fff;
  padding-left: 1rem;
}
.headerbar-right > a {
  text-decoration: none;
}
.headerbar-right > a > i::before {
  font-size: 1.5rem;
  color: #fff;
  padding-right: 1rem;
}
.headerbar-log > img {
  height: 1.25rem;
}
/*轮播图*/
.my-swipe img {
  width: 100%;
}
/*公司简介*/
.company-info {
  display: flex;
  line-height: 2.4rem;
  justify-content: space-around;
  background: #fff;
}
.company-info-item {
  font-size: 0.75rem;
}
.company-info-item::before {
  content: "\e666";
  font-size: 0.875rem;
  font-family: "iconfont";
  font-style: normal;
  color: #435448;
  margin-right: 2px;
}
/*导航*/
.procate {
  display: flex;
  justify-content: space-around;
  padding: 0.5rem 0;
  background: #fff;
}
.procate-item {
  text-align: center;
}
.procate-item > a {
  text-decoration: none;
  font-size: 0.75rem;
  color: #232628;
}
.procate-item > a > img {
  width: 2.2rem;
}
/*一秒选花*/
.modetitle {
  padding: 0.75rem 0.3rem;
  font-size: 1rem;
  height: 1rem;
  color: #435448;
  display: flex;
  background: #fff;
}
.modetitle::before {
  content: "";
  display: inline-block;
  width: 0.2em;
  height: 1rem;
  background: #435448;
  margin-right: 0.4rem;
}
/*section*/
.scene {
  padding: 0 0.4rem;
  background: #fff;
}
.scene-list {
  display: flex;
  justify-content: space-between;
  width: 100%;
  margin-bottom: 0.5rem;
}
.scene-item {
  margin: 0 0.12rem;
}
.scene-item > a {
  position: relative;
}
.scene-item > a > img {
  width: 100%;
}
.scene-item > a > span {
  position: absolute;
  left: 2rem;
  font-size: 0.875rem;
  color: #fff;
  bottom: 0.65rem;
}
.scene-item > a > span.scene-item-title {
  color: #000 !important;
  left: 1rem;
  bottom: 4.4rem;
}
/*热销、特价*/
.scene-list > a {
  display: inline-block;
  border: 1px solid #e9ecf0;
  width: 50%;
  height: 8.4rem;
  padding: 0.75rem;
  text-decoration: none;
  position: relative;
}
.scene-list > a > p:first-child {
  color: #232628;
  font-size: 14px;
}
.scene-list > a > p:nth-child(2) {
  color: #71797f;
  font-size: 12px;
  padding-top: 3px;
}
.scene-list > a > div {
  position: absolute;
  left: 0.75rem;
  bottom: 0.75rem;
}
.scene-item-bottom-label {
  display: inline-block;
  font-size: 12px;
  color: #fff;
  background: #ff734c;
  padding: 4px 0.4rem;
  border-radius: 16px;
  margin-right: 2rem;
}
.scene-item-bottom-text {
  font-size: 12px;
}
.scene-list > a:first-child {
  background: url(../assets/home/m_home_ranklist2.png) no-repeat center center;
  background-size: contain;
  border-right: 0;
}
.scene-list > a:nth-child(2) {
  background: url(../assets/home/m_home_special2.png) no-repeat center center;
  background-size: contain;
}
.scene-item > a > p {
  position: absolute;
  font-size: 12px;
  width: 100%;
  text-align: center;
  bottom: 4px;
  color: #fff;
  background: #232628cc;
  padding: 5px 0;
}
.last-list {
  padding-bottom: 12px;
}
/*精品优选*/
.product {
  margin-top: 0.5rem;
  background: #fbfbfc;
}
.product-title {
  text-align: center;
  padding: 1.3rem 0;
  background: #fff;
}
.product-list {
  font-size: 12px;
  padding: 0 8px;
}
.product-list > div {
  margin-bottom: 12px;
}
.product-item {
  height: 191px;
  box-shadow: 0 0 1px 1px #f5f5f5;
}
.product-item > a {
  display: flex;
  text-decoration: none;
}
.product-item-pic {
  width: 176px;
  height: 191px;
}
.product-item-pic > img {
  height: 191px;
  width: 176px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
}
/*描述信息*/
.product-item-info {
  width: 183px;
  padding: 1rem;
  box-sizing: border-box;
  position: relative;
  color: #232628;
  background: #fff;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
}
.product-item-info-name {
  font-size: 14px;
  font-weight: 300;
}
.product-item-info-desc {
  font-weight: 300;
  height: 16px;
  line-height: 16px;
  overflow: hidden;
}
.product-item-info-tags {
  margin: 10px 0;
}
.tag-promo {
  padding: 1px 5px;
  background: #ff734c;
  color: #fff;
  border-radius: 10px;
}
.product-item-info-promo {
  max-height: 32px;
  line-height: 16px;
  padding: 10px 0;
  overflow-y: hidden;
  text-overflow: ellipsis;
  border-top: 1px solid #eee;
  border-bottom: 1px solid #eee;
  margin-top: 15px;
  font-weight: 500;
  color: #232628;
}
.product-item-info-bottom {
  position: absolute;
  bottom: 1rem;
}
.product-item-info-bottom::after {
  content: "";
  display: block;
  clear: both;
}
.product-item-info-bottom-left {
  float: left;
}
.product-item-info-prices > strong {
  color: #ff734c;
  font-size: 14px;
}
.product-item-info-prices > s {
  color: #71797f;
  margin-left: 5px;
  margin-right: 10px;
}
.product-item-info-sales {
  font-size: 12px;
  line-height: 18px;
  color: #71797f;
}
.product-item-info-bottom-right {
  float: right;
  margin-top: 5px;
}
.product-item-info-bottom-right > i {
  font-size: 20px;
}
/*查看更多*/
.product-more {
  padding: 1.1rem 0;
  text-align: center;
  background: #fff;
}
.product-more > a {
  display: inline-block;
  text-decoration: none;
  font-size: 12px;
  color: #232628;
  padding: 6px 25px;
  border: 1px solid #000;
  border-radius: 2px;
}
/*鲜花分类*/
.product-list-vertical {
  background: #fafbfc;
  width: 375px;
  display: flex;
  flex-wrap: wrap;
  padding: 0 8px;
  justify-content: space-between;
  box-sizing: border-box;
}
.product-item-vertical {
  width: 175px;
  margin-bottom: 8px;
  box-shadow: 0 0 1px 1px #f5f5f5;
}
.product-item-vertical > a {
  text-decoration: none;
}
.product-item-vertical-pic > img {
  width: 175px;
  height: 191px;
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
}
.product-item-vertical-info {
  font-size: 12px;
  background: #fff;
  height: 94px;
  padding: 8px;
  color: #232628;
  position: relative;
  border-bottom-left-radius: 5px;
  border-bottom-right-radius: 5px;
}
.product-item-vertical-info-tags {
  margin-bottom: 10px;
}
.vertical-tag-promo {
  padding: 0 5px;
  border: 1px solid #ff734c;
  border-radius: 10px;
  color: #ff734c;
}
.product-item-vertical-info-name {
  font-size: 14px;
  font-weight: 300;
  height: 14px;
  overflow: hidden;
}
.product-item-vertical-info-bottom {
  position: absolute;
  bottom: 20px;
  width: 160px;
}
.product-item-vertical-info-bottom::after {
  content: "";
  display: block;
  clear: both;
}
/*价格*/
.product-item-vertical-info-bottom-left {
  float: left;
  width: 140px;
}
.product-item-vertical-info-prices > strong {
  font-size: 14px;
  color: #ff734c;
  line-height: 18px;
}
.product-item-vertical-info-prices > s {
  color: #71797f;
  margin-left: 5px;
}
.product-item-vertical-info-sales {
  color: #71797f;
}
.product-item-vertical-info-bottom-right {
  float: right;
  margin-top: 8px;
}
.product-item-vertical-info-bottom-right > i {
  font-size: 20px;
}
/*为什么选择我们*/
.brand {
  background: #fff;
  font-size: 12px;
  margin-bottom: 8px;
}
.brand-title {
  text-align: center;
  padding: 20px 0;
  font-size: 16px;
}
.brand-list {
  display: flex;
  flex-wrap: wrap;
}
.brand-item {
  padding-bottom: 25px;
  width: 125px;
  text-align: center;
}
.brand-item > img {
  width: 64px;
  height: 64px;
}
.brand-item > p {
  margin-top: 5px;
}
/*footer*/
.footer {
  background: #fff;
  font-size: 12px;
  padding-bottom: 50px;
}
.footer-link {
  display: flex;
  flex-wrap: wrap;
  padding-top: 20px;
  padding-bottom: 6px;
  justify-content: space-around;
}
.footer-link-item {
  margin: 0 14px;
  margin-bottom: 14px;
}
.footer-link-item > a {
  display: inline-block;
  padding: 4px 8px;
  background: #e9ecf0;
  color: #232628;
  text-decoration: none;
}
.footer-entry {
  display: flex;
  justify-content: space-around;
}
.footer-entry > a {
  text-decoration: none;
}
.footer-entry > a > i {
  display: inline-block;
  width: 36px;
  height: 36px;
  border-radius: 50%;
  background: #e9ecf0;
  font-size: 20px;
  text-align: center;
  line-height: 36px;
  color: #232628;
}
.footer-entry > a > p {
  color: #232628;
  margin-top: 5px;
  text-align: center;
}
.footer-copyright {
  padding: 15px 0;
  color: #b4babf;
  text-align: center;
  line-height: 14px;
}
.footer-copyright > a {
  text-decoration: none;
  color: #b4babf;
}
</style>
<script>
export default {
  data() {
    return {
      boutiques: [],
      flowers_for_love: [],
      flowers_for_friend: [],
      flowers_for_birthday: [],
      flowers_for_senior: [],
      flowers_for_creation: [],
      flowers_for_special: [],
      flowers_for_business: [],
    };
  },
  methods: {
    handleChange(index) {},
  },
  created() {
    //获取精品优选商品
    this.axios.get("/product/boutiques").then((res) => {
      var data = res.data;
      data.forEach((item) => {
        item.desc_msg = item.desc_msg.slice(0, 20) + "...";
        item.image = require("../assets/home/" + item.image);
        this.boutiques.push(item);
      });
    });

    //获取爱情鲜花
    this.axios.get("/product/category?id=1").then((res) => {
      var data = res.data;
      data.forEach((item) => {
        item.image = require("../assets/home/" + item.image);
        this.flowers_for_love.push(item);
      });
    });

    //获取友情鲜花
    this.axios.get("/product/category?id=2").then((res) => {
      var data = res.data;
      data.forEach((item) => {
        item.image = require("../assets/home/" + item.image);
        this.flowers_for_friend.push(item);
      });
    });

    //获取生日鲜花
    this.axios.get("/product/category?id=3").then((res) => {
      var data = res.data;
      data.forEach((item) => {
        item.image = require("../assets/home/" + item.image);
        this.flowers_for_birthday.push(item);
      });
    });

    //获取长辈鲜花
    this.axios.get("/product/category?id=4").then((res) => {
      var data = res.data;
      data.forEach((item) => {
        item.image = require("../assets/home/" + item.image);
        this.flowers_for_senior.push(item);
      });
    });

    //获取创意鲜花
    this.axios.get("/product/category?id=5").then((res) => {
      var data = res.data;
      data.forEach((item) => {
        item.image = require("../assets/home/" + item.image);
        this.flowers_for_creation.push(item);
      });
    });

    //获取特色鲜花
    this.axios.get("/product/category?id=6").then((res) => {
      var data = res.data;
      data.forEach((item) => {
        item.image = require("../assets/home/" + item.image);
        this.flowers_for_special.push(item);
      });
    });

    //获取商务鲜花
    this.axios.get("/product/category?id=7").then((res) => {
      var data = res.data;
      data.forEach((item) => {
        item.image = require("../assets/home/" + item.image);
        this.flowers_for_business.push(item);
      });
    });
  },
};
</script>
