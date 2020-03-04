import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/page/LoginPage/RegisterSuccess.dart';
import 'package:tokpay/page/LoginPage/SignIn.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(
          ScreenUtil().setWidth(56),
           ScreenUtil().setHeight(132), 
           ScreenUtil().setWidth(56), 
           0),
            color: Colors.white,
        child:RegisterView()
        ),
          
        ],
        
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left:ScreenUtil().setWidth(240),bottom: ScreenUtil().setHeight(44)),
        child: BottomNavigationBar(),
      ),
    );
  }
}


class RegisterView extends StatefulWidget {
  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(50)),
           child:Text("注册账号",style: TextStyle(
          fontSize: ScreenUtil().setSp(36),
          color: Color.fromRGBO(42, 127, 231, 1),
          fontWeight: FontWeight.w500,
        ),),
        ),
        Container(
           child: TextField(
            cursorColor:Color.fromRGBO(31, 120, 228, 1),
             keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              fillColor: Colors.red,
                  isDense: true,
                  hintText: '请输入邮箱号',
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
                  suffix: Icon(Icons.highlight_off,color: Color.fromRGBO(168, 168, 168, 1),size: ScreenUtil().setHeight(48),),
                  // contentPadding:EdgeInsets.all(10.0),
                ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top:ScreenUtil().setHeight(60)),
           child: TextField(
            cursorColor:Color.fromRGBO(31, 120, 228, 1),
             keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              fillColor: Colors.red,
                  isDense: true,
                  hintText: '请设置登录密码',
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
                  
                  // contentPadding:EdgeInsets.all(10.0),
                ),
          ),
        ),
        
        Container(
          padding: EdgeInsets.only(top:ScreenUtil().setHeight(60)),
           child: TextField(
            cursorColor:Color.fromRGBO(31, 120, 228, 1),
             keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              fillColor: Colors.red,
                  isDense: true,
                  hintText: '请输入图形验证码',
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
          padding: EdgeInsets.only(top:ScreenUtil().setHeight(60)),
           child: TextField(
            cursorColor:Color.fromRGBO(31, 120, 228, 1),
             keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              fillColor: Colors.red,
                  isDense: true,
                  hintText: '请输入手机或邮箱验证码',
                   suffixIcon:
              GestureDetector(
                onTap: (){
                  print("object");
                   FocusScope.of(context).requestFocus(FocusNode());
                },

                child:
              Container(
                margin: EdgeInsets.only(top: ScreenUtil().setHeight(25),bottom: ScreenUtil().setHeight(15)),
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(23)),
                decoration: BoxDecoration(
                  border: Border(left: BorderSide(width: 1,color: Color.fromRGBO(196, 205, 218, 1)))
                ),
                child:
                GestureDetector(
                  onTap: (){
                    print("发送验证码");
                  },
                  child:
                Text("发送验证码",style: TextStyle(
                  color: Color.fromRGBO(31, 120, 228, 1),
                  fontSize: ScreenUtil().setSp(26)
                ),),)
              ),
               ), 
                 

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
          margin: EdgeInsets.only(top:ScreenUtil().setHeight(68)),
          width: ScreenUtil().setWidth(640),
          height: ScreenUtil().setHeight(84),
          color: Color.fromRGBO(201, 212, 227, 1),
          child: FlatButton(
            child: Text("注册",style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: ScreenUtil().setSp(28),
            ),),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterSuccess()));
            }
            
            ),
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
        Text("已有账号？",style: TextStyle(
          color: Color.fromRGBO(166, 177, 193, 1),
          fontSize: ScreenUtil().setSp(30)
        ),),
        GestureDetector(
          child: Text("登录",style: TextStyle(
            color: Color.fromRGBO(31, 120, 228, 1),
            fontSize: ScreenUtil().setSp(30)
          ),
          ),
         onTap: (){
            print("登录");
            // Navigator.pushNamedAndRemoveUntil(context, "signIn", (route) => route==null);
            Navigator.of(context).pop();
           
            
            
          },
        )
      ],
    );
  }
}

