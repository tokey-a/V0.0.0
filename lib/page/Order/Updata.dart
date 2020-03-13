import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Updata extends StatefulWidget {
  @override
  _UpdataState createState() => _UpdataState();
}

class _UpdataState extends State<Updata> {
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
              "更新付款凭证",
              style: TextStyle(
                color: Color.fromRGBO(92, 92, 92, 1),
                fontSize: ScreenUtil().setSp(32),
              ),
            ),
      ),
      body: 
      Container(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(36), ScreenUtil().setHeight(40), ScreenUtil().setWidth(36), ScreenUtil().setHeight(80)),
            child: Text("请您务必确认您已向卖家付款，未付款点击“我已付款”将直接冻结您的账户",textAlign:TextAlign.left,style: TextStyle(
              color: Color.fromRGBO(251, 80, 69, 1),
              fontSize: ScreenUtil().setSp(30),
            ),),
          ),
          Container(
            margin: EdgeInsets.only(left: ScreenUtil().setWidth(36)),
            alignment: Alignment.topLeft,
            child: Text("上传收款凭证：",style: TextStyle(
              color: Color.fromRGBO(89, 89, 89, 1),
              fontSize: ScreenUtil().setSp(28)
            ),),
          ),
          Container(
            //上传图片
          ),
          GestureDetector(
            child:
        Container(
          padding: EdgeInsets.only(top: ScreenUtil().setHeight(16),bottom: ScreenUtil().setHeight(16),left: ScreenUtil().setWidth(212),right: ScreenUtil().setWidth(212)),
          decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromRGBO(2, 157, 255, 1), Color.fromRGBO(1, 100, 254, 1)],begin: Alignment.topLeft,end: Alignment.bottomRight),// 渐变色
          borderRadius: BorderRadius.circular(4),
          boxShadow: [BoxShadow(
            color: Color.fromRGBO(1, 100, 254, 0.5),
            offset: Offset(0, 7),
            blurRadius: 15,
            spreadRadius: 0,
          )]
      ),
            child: Text("确定",textAlign:TextAlign.center,style: TextStyle(
            color: Colors.white,
            fontSize: ScreenUtil().setSp(32)
          ),),  
        ),
        onTap: (){
          
        },
        ),
        ],
      ),)
    );
  }
}