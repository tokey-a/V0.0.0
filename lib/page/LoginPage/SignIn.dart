import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/page/HomePage.dart';
import 'package:tokpay/page/LoginPage/ForgetPassWord.dart';
import 'package:tokpay/page/LoginPage/Register.dart';
import 'package:tokpay/page/LoginPage/RegisterSuccess.dart';
import 'package:tokpay/page/Transaction/Transaction.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset("Images/Currency/ZuoJianTou/Rectangle.png",width: ScreenUtil().setWidth(38),height: ScreenUtil().setHeight(38),),
          onPressed: ()=>Navigator.of(context).pop(),
        ),
        elevation: 0,
      ),
      body:
      GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child:
      ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
        child:SignInView()),
          
        ],
        
      ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left:ScreenUtil().setWidth(240),bottom: ScreenUtil().setHeight(44)),
        child: BottomNavigationBar(),
      ),
    );
  }
}

class SignInView extends StatefulWidget {
  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(
          ScreenUtil().setWidth(48),
           ScreenUtil().setHeight(132), 
           0, 
           0),
          child:Text("登录账号",style: TextStyle(
          fontSize: ScreenUtil().setSp(36),
          color: Color.fromRGBO(42, 127, 231, 1),
          fontWeight: FontWeight.w600,
        ),), 
        ),
        Container(
          padding: EdgeInsets.fromLTRB(
            ScreenUtil().setWidth(53),
           ScreenUtil().setHeight(60), 
           ScreenUtil().setWidth(57), 
            ScreenUtil().setHeight(0)
          ),
          width: double.infinity,
          child: TextField(
            cursorColor:Color.fromRGBO(31, 120, 228, 1),
             keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              fillColor: Colors.red,
                  isDense: true,
                  hintText: '请输入登录账号',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(166, 177, 193, 1),
                    fontSize: ScreenUtil().setSp(26),
                  ),
                enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1),width: 2),
        ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Color.fromRGBO(31, 120, 228, 1), 
                   width: 2,
        )),
                  suffix: Icon(Icons.clear,color: Color.fromRGBO(168, 168, 168, 1),size: ScreenUtil().setHeight(48),),
                  // contentPadding:EdgeInsets.all(10.0),
                ),
          ),
        ),
         Container(
          padding: EdgeInsets.fromLTRB(
            ScreenUtil().setWidth(53),
           ScreenUtil().setHeight(60), 
           ScreenUtil().setWidth(57), 
            ScreenUtil().setHeight(0)
          ),
          child: TextField(
            cursorColor:Color.fromRGBO(31, 120, 228, 1),
            decoration: InputDecoration(
              fillColor: Colors.red,
                  isDense: true,
                  hintText: '请输入登录密码',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(166, 177, 193, 1),
                    fontSize: ScreenUtil().setSp(26),
                  ),
                enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1),width: 2),
        ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Color.fromRGBO(31, 120, 228, 1), 
                   width: 2,
        )),
                  suffix: Icon(Icons.clear,color: Color.fromRGBO(168, 168, 168, 1),size: ScreenUtil().setHeight(48),),
                  // contentPadding:EdgeInsets.all(10.0),
                ),
          ),
        ),
        
          Container(
            margin: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(556),
           ScreenUtil().setHeight(22), 
           ScreenUtil().setWidth(0), 
            ScreenUtil().setHeight(54)),
            child:InkWell(
          child: Text("忘记密码？",style: TextStyle(
            color: Color.fromRGBO(31, 120, 228, 1),
            fontSize: ScreenUtil().setSp(28,allowFontScalingSelf: false),
            fontWeight: FontWeight.w600
          ),),
          onTap: (){
            print("找回密码");
            Navigator.push(context, MaterialPageRoute(builder:(context)=>ForgetPassWord()));
          },
            ),
        ),
        Container(
          margin: EdgeInsets.only(left:ScreenUtil().setWidth(55),right:ScreenUtil().setWidth(55) ),
          width: double.infinity,
          color: Colors.blue,
          child: FlatButton(
            child: Text("登录",style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: ScreenUtil().setSp(28),
            ),),
            onPressed: (){
               Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=> HomePage()),
               (route)=>route==null//null时不可返回
               );
            }),
        )
      ],
    );
  }
}

class BottomNavigationBar extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text("还没有账号？",style: TextStyle(
          color: Color.fromRGBO(166, 177, 193, 1),
          fontSize: ScreenUtil().setSp(30)
        ),),
        GestureDetector(
          child: Text("注册",style: TextStyle(
            color: Color.fromRGBO(31, 120, 228, 1),
            fontSize: ScreenUtil().setSp(30)
          ),
          ),
         onTap: (){
            print("注册");
            Navigator.push(context, MaterialPageRoute(builder:(context)=>Register())
            );
          },
        )
      ],
    );
  }
}