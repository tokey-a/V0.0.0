import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/page/Myself/RealName1.dart';

class UploadIdCard extends StatefulWidget {
  @override
  _UploadIdCardState createState() => _UploadIdCardState();
}

class _UploadIdCardState extends State<UploadIdCard> {
  List title=["1、上传身份证正面照","2、上传身份证反面照","3、上传身份证正面照和手持签名+日期字纸"];
  List image=["Images/Myself/UploadIdCard/UpOfFront/Front.png","Images/Myself/UploadIdCard/UpOfReverse/reverse.png","Images/Myself/UploadIdCard/upofhalf/upofhalf.png"];
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
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(55),right: ScreenUtil().setWidth(55)),
           color: Colors.white,
           child:
        ListView(children: <Widget>[
           ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) => Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
padding: EdgeInsets.only(top: ScreenUtil().setHeight(35),bottom: ScreenUtil().setHeight(11)),
                    child:Text(
                      title[index],
                      style: TextStyle(
                        color: Color.fromRGBO(114, 115, 125, 1),
                        fontSize: ScreenUtil().setSp(28),
                      ),
                    ),),
                    GestureDetector(
                        child: Image.asset(image[index],width: ScreenUtil().setWidth(656),height: ScreenUtil().setHeight(409),),
                        ),
                  ],
                ),
              ),
            ),
          
          Container(
              margin: EdgeInsets.only(
                  top: ScreenUtil().setHeight(78),
                  ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RealName1()));
                  })),
                  Container(
                    padding: EdgeInsets.only(top: ScreenUtil().setHeight(35),),
                    child: Text("1、所有图片禁止含有水印，照片要求：大小不超過3M，证件信息清晰可见，否则无法审核通过",style: TextStyle(
                      fontSize: ScreenUtil().setSp(24),color: Color.fromRGBO(154, 155, 161, 1),
                    ),),
                  ),
                  Container( padding: EdgeInsets.only(top: ScreenUtil().setHeight(35),bottom: ScreenUtil().setHeight(35)),
                    child: Text("2、个人相片请完整露出上半身，并手持国民身份证正面照片和个人签名+日期纸",style: TextStyle(
                      fontSize: ScreenUtil().setSp(24),color: Color.fromRGBO(154, 155, 161, 1),
                    ),),
                  )
        ])
        )
        );
 }
}