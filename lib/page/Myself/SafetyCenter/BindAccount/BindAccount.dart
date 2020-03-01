import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BindAccount extends StatefulWidget {
  final tabbarTitle;
  final titleText;
  final hintText;
  BindAccount({Key key,this.tabbarTitle,this.titleText,this.hintText}):super(key:key);
  @override
  _BindAccountState createState() => _BindAccountState();
}

class _BindAccountState extends State<BindAccount> {
  bool _switchItemA=true;
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
          "${widget.tabbarTitle}",
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
                    "${widget.titleText}",
                    style: TextStyle(
                        color: Color.fromRGBO(114, 115, 125, 1),
                        fontSize: ScreenUtil().setSp(28),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                  decoration: InputDecoration(
                    hintText:'${widget.hintText}',
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
                  child: Text("手机验证",
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
                      child: Text("手机验证"),
                    ),
                    hintText: "请输入手机验证码",
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
                  child: Text("邮箱验证",
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
                      child: Text("邮箱验证"),
                    ),
                    hintText: "请输入邮箱验证",
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
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(68)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text("开启安全验证",style: TextStyle(
                          color: Color.fromRGBO(66, 69, 98, 1),
                          fontSize: ScreenUtil().setSp(30),
                        ),),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: CupertinoSwitch(
                              activeColor: Color.fromRGBO(31, 120, 228, 1),
                              value: _switchItemA,
                              onChanged: (e) {
                                setState(() {
                                  _switchItemA = e;
                                  print(e);
                                });
                              },
                            ),
                          )
                        )
                      
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(44)),
                  child: Text("开启安全验证后，您在登录、交易、修改收款方式时，需要进行手机或邮箱验证",style: TextStyle(
                    color: Color.fromRGBO(183, 183, 183, 1),
                    fontSize: ScreenUtil().setSp(24),
                  ),),
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
                  "下一步",
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