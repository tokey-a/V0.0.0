import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/page/Myself/RealName/UploadIdCard.dart';

class RealName extends StatefulWidget {
  @override
  _RealNameState createState() => _RealNameState();
}

class _RealNameState extends State<RealName> {
  List title = ["国家/地区", "姓名", "证件号码"];
  List hintText = ["请输入国家", "请输入姓名", "请输入您的身份证号码"];
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
            "实名认证",
            style: TextStyle(
              color: Color.fromRGBO(92, 92, 92, 1),
              fontSize: ScreenUtil().setSp(32),
            ),
          ),
        ),
        body: Container(
           color: Colors.white,
           child:
        ListView(children: <Widget>[
          
           
             ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) => Container(
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(55),
                    right: ScreenUtil().setWidth(55),
                    top: ScreenUtil().setHeight(38)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title[index],
                      style: TextStyle(
                        color: Color.fromRGBO(114, 115, 125, 1),
                        fontSize: ScreenUtil().setSp(28),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: ScreenUtil().setHeight(0)),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: hintText[index],
                            hintStyle: TextStyle(
                              fontSize: ScreenUtil().setSp(26),
                              color: Color.fromRGBO(166, 177, 193, 1),
                              ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(31, 120, 228, 1),
                              width: 2,
                            )),
                          ),
                          cursorColor: Colors.black,
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(34),
                            color: Color.fromRGBO(66, 69, 98, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          
          Container(
              margin: EdgeInsets.only(
                  top: ScreenUtil().setHeight(78),
                  left: ScreenUtil().setWidth(55),
                  right: ScreenUtil().setWidth(55)),
              width: double.infinity,
              child: RaisedButton(
                  padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(30),
                      bottom: ScreenUtil().setHeight(30)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    "下一步",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  color: Color.fromRGBO(31, 120, 228, 1),
                  onPressed: () {
                    print("下一步");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadIdCard()));
                  })),
        ])));
  }
}
