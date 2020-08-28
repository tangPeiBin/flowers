const express=require("express");
const router=express.Router();
const pool=require("../pool.js");
//精选优品接口
router.get("/boutiques",(req,res)=>{
    let sql="SELECT fid,title,desc_msg,price_offline,price_online,image,saleCount,familyName FROM flowers left outer join family on familyId=id WHERE isOnsale=1 LIMIT 0,6";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});
//爱情鲜花接口
router.get("/category",(req,res)=>{
    let familyId=req.query.id;
    let sql="SELECT fid,title,price_offline,price_online,image,saleCount,familyName FROM flowers left outer join family on familyId=id WHERE familyId=? LIMIT 0,4";
    pool.query(sql,[familyId],(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});
//详情页接口
router.get("/detail",(req,res)=>{
    let id=req.query.id;
    let sql="SELECT pid,title,createby,packing,desc_msg,price_online,image,images FROM flowers WHERE fid=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});
//分类页接口
router.get("/searchfamily",(req,res)=>{
    let familyId=req.query.familyId;
    let sql="SELECT pid,title,price_offline,price_online,image FROM flowers WHERE familyId=?";
    pool.query(sql,[familyId],(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});
//插入购物车
router.post('/addcart', (req, res) => {
    let image = req.body.image;
    let price = req.body.price;
    let title = req.body.title;
    let count = req.body.count;
    let sql = "INSERT INTO cart(title,image,price_online,count) VALUES(?,?,?,?)";
    pool.query(sql,[title,image,price,count],(err,result)=>{
        if(err) throw err;
        if (result.affectedRows > 0) {
            res.send({ msg: '插入成功', code: 1 });
        }
    });
});
//查询购物车(所有)
router.get('/searchcarts', (req, res) => {
    let sql = "SELECT cid,title,price_online,image,count FROM cart";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});
//查询购物车(单个)
router.get('/searchcart', (req, res) => {
    let title = req.query.title;
    let sql = "SELECT cid,count FROM cart WHERE title=?";
    pool.query(sql,[title],(err,result)=>{
        if (err) throw err;
        if (result.length > 0) {
            res.send({ code: 1 ,result:result[0]});
        } else { 
            res.send({ code: 0 });
        }
    });
});
// 更新购物车
router.put('/addcount', (req, res) => {
    let title = req.body.title;
    let count = req.body.count;
    let sql = "UPDATE cart SET count=? WHERE title=?";
    pool.query(sql, [count, title], (err, result) => {
        if (err) throw err;
        res.send({ code: 1 });
    });
});
//移除购物车
router.delete('/deletecart', (req, res) => {
    let id = req.query.id;
    let sql = 'DELETE FROM cart WHERE cid=?';
    pool.query(sql, [id], (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) { 
            res.send(result);
        }
    });
});
module.exports=router;
