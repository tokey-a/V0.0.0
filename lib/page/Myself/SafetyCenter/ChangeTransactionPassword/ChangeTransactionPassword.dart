import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeTransactionPassword extends StatefulWidget {
  final password;
  ChangeTransactionPassword({Key key,this.password}):super(key: key);
  @override
  _ChangeTransactionPasswordState createState() => _ChangeTransactionPasswordState();
}

class _ChangeTransactionPasswordState extends State<ChangeTransactionPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: IconButton(
          icon: Image.asset(
            "Images/Currency/ZuoJianTou/Rectangle.png",
            width: ScreenUtil().setWidth(38),
            height: ScreenUtil().setHeight(38),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 1,
        title: Text(
         widget.password==1? "设置交易密码":"修改交易密码",
          style: TextStyle(
            color: Color.fromRGBO(92, 92, 92, 1),
            fontSize: ScreenUtil().setSp(32),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(36),
                right: ScreenUtil().setWidth(36)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(58),bottom: ScreenUtil().setHeight(10)),
                  child: Text(
                    widget.password==1?"交易密码":"新交易密码",
                    style: TextStyle(
                        color: Color.fromRGBO(114, 115, 125, 1),
                        fontSize: ScreenUtil().setSp(28),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  // maxLength: 6,
                  style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                  decoration: InputDecoration(
                    hintText: '请输入6位数字密码',
                    isDense: true,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(31, 120, 228, 1),
                      width: 2,
                    )),
                  ),
                  onSubmitted: (text) {
                    print(text);
                  },
                ),Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(58),bottom: ScreenUtil().setHeight(10)),
                  child: Text(
                    "确认密码",
                    style: TextStyle(
                        color: Color.fromRGBO(114, 115, 125, 1),
                        fontSize: ScreenUtil().setSp(28),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                  decoration: InputDecoration(
                    hintText: '请再次输入密码',
                    isDense: true,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(31, 120, 228, 1),
                      width: 2,
                    )),
                  ),
                  onSubmitted: (text) {
                    print(text);
                  },
                ),
                Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(58),bottom: ScreenUtil().setHeight(10)),
                  child: Text(
                    "验证码",
                    style: TextStyle(
                        color: Color.fromRGBO(114, 115, 125, 1),
                        fontSize: ScreenUtil().setSp(28),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                  decoration: InputDecoration(
                    suffixIcon: Container(
                      child: Text("data"),
                    ),
                    hintText: '请输入验证码',
                    isDense: true,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(31, 120, 228, 1),
                      width: 2,
                    )),
                  ),
                  onSubmitted: (text) {
                    print(text);
                  },
                ),
                widget.password==1?Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(44)),
                  child: Text("交易密码用于交易时安全验证，请勿设置的与登录密码一致",style: TextStyle(
                    color: Color.fromRGBO(183, 183, 183, 1),
                    fontSize: ScreenUtil().setSp(24),
                  ),),
                ):Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(44)),
                  child: Text(""),
                ),
                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(40)),
            color: Color.fromRGBO(31, 120, 228, 1),
            width: double.infinity,
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(2),
                bottom: ScreenUtil().setHeight(2)),
            child: RaisedButton(
                elevation: 0,
                child: Text(
                  "确认",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                color: Color.fromRGBO(31, 120, 228, 1),
                onPressed: () {
                  print("确认");
                  
                })),
              ],
            ),
          )
        ],
      ),
    );
  }
}