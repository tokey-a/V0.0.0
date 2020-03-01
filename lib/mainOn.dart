import 'package:flutter/material.dart';
import 'package:tokpay/page/Assets/GetMoney.dart';
import 'package:tokpay/page/Assets/Recharge.dart';
import 'package:tokpay/page/Assets/TransferMoney.dart';
import 'package:tokpay/page/LoginPage/SignIn.dart';
import 'package:tokpay/page/Myself/RealName/RealName.dart';
import 'package:tokpay/page/Myself/RealName1.dart';
import 'package:tokpay/page/Myself/SafetyCenter/BindAccount/BindAccount.dart';
import 'package:tokpay/page/Myself/SafetyCenter/SafetyCenter.dart';
import 'package:tokpay/page/Receivables/PaymentMethod.dart';
// import 'package:tokpay/page/home.dart';

class MainOn extends StatefulWidget {
  @override
  _MainOnState createState() => _MainOnState();
}

class _MainOnState extends State<MainOn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    
    ListView(
        shrinkWrap: true,
        children: <Widget>[
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         RaisedButton(
           child: Text("登录Page"),
           onPressed: (){
             print("登陆页面");
             Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
           }),
           RaisedButton(
           child: Text("收款方式"),
           onPressed: (){
             print("登陆页面");
             Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethod()));
           }),

            RaisedButton(
           child: Text("安全中心"),
           onPressed: (){
             print("安全中心");
             Navigator.push(context, MaterialPageRoute(builder: (context)=>SafetyCenter()));
           }),
           RaisedButton(
           child: Text("绑定手机号"),
           onPressed: (){
             print("安全中心");
             Navigator.push(context, MaterialPageRoute(builder: (context)=>BindAccount(
               tabbarTitle:'绑定手机号码',
               titleText: '手机号码',
               hintText: '请输入手机号码',
             )));
           }),
           RaisedButton(
           child: Text("绑定邮箱"),
           onPressed: (){
             print("安全中心");
             Navigator.push(context, MaterialPageRoute(builder: (context)=>BindAccount(
               tabbarTitle:'绑定邮箱',
               titleText: '邮箱地址',
               hintText: '请输入邮箱地址',

             )));
           }),
           RaisedButton(
           child: Text("充值"),
           onPressed: (){
             print("充值");
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Recharge()));
           }),RaisedButton(
           child: Text("提现"),
           onPressed: (){
             print("充值");
             Navigator.push(context, MaterialPageRoute(builder: (context)=>GetMoney()));
           }),
           RaisedButton(
           child: Text("转账"),
           onPressed: (){
             print("转账");
             Navigator.push(context, MaterialPageRoute(builder: (context)=>TransferMoney()));
           }),
            RaisedButton(
           child: Text("实名认证"),
           onPressed: (){
             print("实名认证");
             Navigator.push(context, MaterialPageRoute(builder: (context)=>RealName()));
           }),
           RaisedButton(
           child: Text("实名认证1"),
           onPressed: (){
             print("实名认证1");
             Navigator.push(context, MaterialPageRoute(builder: (context)=>RealName1()));
           }),
        ],
      ),
      ],
      )
    );
  }
}