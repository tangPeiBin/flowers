<template>
    <div class="box">
        <my-topbar></my-topbar>
        <div class="buycart">
            <div v-if="carts.length">
                <van-swipe-cell v-for="(v, k) of carts" :key="k">
                    <div class="items">
                        <!-- <van-card> </van-card> -->
                        <img class="items-img" :src="v.image" alt="" />
                        <div class="items-info">
                            <p class="items-title">
                                <span v-text="v.title"></span>
                                <span v-text="v.price_online + '×'"></span>
                            </p>
                            <div class="buttons">
                                <button
                                    @click="v.count = v.count - 1"
                                    :disabled="v.count == 1"
                                >
                                    -
                                </button>
                                <span>{{ v.count }}</span>
                                <button @click="v.count = v.count + 1">
                                    +
                                </button>
                            </div>
                            <p
                                class="sum_price"
                                v-text="'￥' + v.price_online * v.count"
                            ></p>
                        </div>
                    </div>
                    <template #right>
                        <van-button
                            square
                            text="删除"
                            type="danger"
                            class="delete-button"
                            @click="deleteItem(v.cid)"
                        ></van-button>
                    </template>
                </van-swipe-cell>
            </div>
            <div class="m-defaultPage m-defaultPage-noCart" v-else>
                <div class="container">
                    <img src="../assets/noCart.png" alt="" />
                    <div class="txt">购物车没有内容哟！</div>
                </div>
            </div>
            <div class="m-bottom">
                <div class="cart-info">
                    <p class="price">￥{{ sum.prices }}</p>
                    <p class="txt">购物车商品({{ sum.count }}件)</p>
                </div>
                <div class="btn" :class="red">下单</div>
            </div>
        </div>
    </div>
</template>
<style scoped>
.box{
    width:375px;
    margin:0 auto;
}
/* 空的购物车 */
.m-defaultPage-noCart {
    background: #f4f4f4;
    padding: 230px 0;
    font-size: 13px;
}
.container {
    text-align: center;
    color: #999;
}
.container > img {
    width: 124px;
}
/* 底部下单 */
.m-bottom {
    height: 3rem;
    width: 100%;
    position: fixed;
    bottom: 0;
    left: 0;
    display: flex;
    border-top: 1px solid #ddd;
    box-sizing: border-box;
}
.cart-info {
    background: #fff;
    height: 48px;
    font-size: 13px;
    line-height: 3rem;
    flex: 2;
    padding: 0 10px;
}
.cart-info > .price {
    float: right;
    color: #b4282d;
}
.btn {
    flex: 1;
    line-height: 3rem;
    height: 3rem;
    background: #ccc;
    color: #fff;
    font-size: 16px;
    text-align: center;
}
.red {
    background: #b4282d;
}
/* 购买项目 */
.buycart > ul {
    width: 100%;
}
.items {
    width: 100%;
    height: 92px;
    padding: 8px 10px 12px 8px;
    display: flex;
    background: #fff;
    box-sizing: border-box;
}
.items-img {
    height: 70px;
    width: 70px;
    border-radius: 3px;
}
.items-info {
    width: 100%;
    margin-left: 8px;
    font-size: 14px;
    color: #666;
}
/* 标题 */
.items-title {
    margin-bottom: 10px;
}
.items-title > span:first-child {
    display: inline-block;
    height: 16px;
    width: 60%;
    line-height: 16px;
    overflow: hidden;
}
.items-title > span:nth-child(2) {
    float: right;
}
.delete-button {
    height: 100%;
    width: 75px;
    font-size: 12px;
    background: #da1a1a;
}
/* 按钮组 */
.buttons {
    float: right;
    height: 25px;
    display: flex;
}
.buttons > button {
    width: 40px;
    height: 25px;
    border: 0;
    font-size: 20px;
    color: #aaa;
    background: #fff;
    border: 1px solid #ccc;
    outline: 0;
}
.buttons > button:first-child {
    border-top-left-radius: 3px;
    border-bottom-left-radius: 3px;
}
.buttons > button:first-child:disabled {
    color: #f5f5f5;
    border: 1px solid #f5f5f5;
}
.buttons > button:nth-child(3) {
    border-top-right-radius: 3px;
    border-bottom-right-radius: 3px;
}
.buttons > span {
    display: inline-block;
    width: 40px;
    height: 25px;
    line-height: 25px;
    text-align: center;
    border: 1px solid #ccc;
    box-sizing: border-box;
    font-size: 12px;
}
.sum_price {
    margin-top: 20px;
}
</style>
<script>
export default {
    data() {
        return {
            carts: [],
        };
    },
    methods: {
        deleteItem(id) {
            this.axios.delete("/product/deletecart?id=" + id).then(res=>{
                this.getItems();
            });    
        },
        getItems() {
            this.axios.get("/product/searchcarts").then((res) => {
                this.carts = [];
                let data = res.data;
                data.forEach((item) => {
                    this.carts.push(item);
                });
            });
        },
    },
    created() {
        this.getItems();
    },
    computed: {
        red() {
            var red = "";
            if (this.carts.length == 0) {
                red = "";
            } else {
                red = "red";
            }
            return red;
        },
        sum() {
            var sum = {};
            sum.prices = 0;
            sum.count = 0;
            this.carts.forEach((item) => {
                sum.prices += item.price_online * item.count;
                sum.count += item.count;
            });
            return sum;
        }
    },
};
</script>
