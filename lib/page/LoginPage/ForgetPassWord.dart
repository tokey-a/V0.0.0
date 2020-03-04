import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassWord extends StatefulWidget {
  @override
  _ForgetPassWordState createState() => _ForgetPassWordState();
}

class _ForgetPassWordState extends State<ForgetPassWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset("Images/Currency/ZuoJianTou/Rectangle.png",width: ScreenUtil().setWidth(38),height: ScreenUtil().setHeight(38),),
          onPressed: ()=>Navigator.of(context).pop(),
        ),
        centerTitle: true,
        elevation: 1,
        title: Text("找回密码"),
      ),
      resizeToAvoidBottomPadding: false,
      body:
      GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child:
      
       ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(
          ScreenUtil().setWidth(56),
           ScreenUtil().setHeight(50), 
           ScreenUtil().setWidth(56), 
           0),
            child: FpView(),
          )
        ],
      ),
      )
    );
  }
}
class FpView extends StatefulWidget {
  @override
  _FpViewState createState() => _FpViewState();
}
class _FpViewState extends State<FpView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
           child: TextField(
            cursorColor:Color.fromRGBO(31, 120, 228, 1),
             keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              fillColor: Colors.red,
                  isDense: true,
                  hintText: '请输入账号',
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
               ), fillColor: Colors.red,
                  hintText: '请输入手机或邮箱验证码',
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
                  hintText: '请输入新密码（至少8位英文数字组合）',
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
                  hintText: '确认新密码',
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
                  // suffix: Icon(Icons.clear,color: Color.fromRGBO(168, 168, 168, 1),size: ScreenUtil().setHeight(48),),
                  // contentPadding:EdgeInsets.all(10.0),
                  suffix: GestureDetector(
                    onTap: (){
                      print("object");
                    },
                    child: Text("data"),
                  )
                ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:ScreenUtil().setHeight(68)),
          width: ScreenUtil().setWidth(640),
          height: ScreenUtil().setHeight(84),
          color: Colors.blue,
          child: FlatButton(
            child: Text("完成",style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: ScreenUtil().setSp(28),
            ),),
            onPressed: (){
              Navigator.of(context).pop();
            }),
        )
      ],
    );
  }
}