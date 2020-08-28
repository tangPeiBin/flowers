const express=require("express");
const router=express.Router();
const pool=require("../pool.js");
// 用户注册
router.post("/register",(req,res)=>{
    let uname=req.body.uname;
    let upwd=req.body.upwd;
    let phone=req.body.phone;
    let sql="insert into user(uname,upwd,phone) VALUES(?,?,?)";
    pool.query(sql,[uname,upwd,phone],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({message:"注册成功",code:1});
        }else{
            res.send({message:"注册失败",code:0});
        }
    });
});
// 用户登录
router.get("/login",(req,res)=>{
    let _uname=req.query.uname;
    let _upwd=req.query.upwd;
    let sql="select uname from user where uname=? and upwd=?"
    pool.query(sql,[_uname,_upwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({message:"登录成功",code:1,uname:_uname});
        }else{
            res.send({message:"登录成功",code:0});
        }
    });
});
module.exports=router;