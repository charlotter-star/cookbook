//引入模块
const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const mysql = require("mysql");
const session = require("express-session");

//创建express对象
var server = express();
//绑定监听端口
server.listen(6666);

//创建连接池
var pool = mysql.createPool({
  host: '127.0.0.1',
  port: 3306,
  user: 'root',
  password: '',
  database: 'cp',
  connectionLimit:15
});

server.use(bodyParser.urlencoded({
  extended: false
}))

//跨域
server.use(cors({
  origin:['http://127.0.0.1:8080',"http://localhost:8080"],
  credentials: true  //是否验证
}));

//添加session功能
server.use(session({
  secret: "128为字符串",
  resave: true,
  saveUninitialized:true
}))


