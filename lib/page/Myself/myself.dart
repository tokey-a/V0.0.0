import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/mainOn.dart';
import 'package:tokpay/page/LoginPage/SignIn.dart';
import 'package:tokpay/page/Myself/RealName/RealName.dart';
import 'package:tokpay/page/Myself/RealName/UploadIdCard.dart';
import 'package:tokpay/page/Myself/SafetyCenter/SafetyCenter.dart';
import 'package:tokpay/page/Myself/Settings.dart';
import 'package:tokpay/page/Receivables/PaymentMethod.dart';

class Myself extends StatefulWidget {
  @override
  _MyselfState createState() => _MyselfState();
}

class _MyselfState extends State<Myself> {
  var userImage="Images/Myself/UploadIdCard/upofhalf/upofhalf.png";
  var UID=990099;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("Images/Myself/BGcolor/BG.png"),fit: BoxFit.cover)
      ),

      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
             GestureDetector(child: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: ScreenUtil().setWidth(41),top: ScreenUtil().setHeight(80)),
                child: Image.asset("Images/Myself/settings/settings.png",width:ScreenUtil().setWidth(32),height: ScreenUtil().setHeight(31),),
              ),
              onTap: (){
                print("object");
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
              },),
          
          Center(
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              margin: EdgeInsets.only(top: ScreenUtil().setHeight(108)),
            child:ClipRRect(child: FadeInImage.assetNetwork(placeholder: "Images/Myself/UploadIdCard/upofhalf/upofhalf.png", width: ScreenUtil().setWidth(110),height: ScreenUtil().setHeight(110),image: userImage,fit:BoxFit.fitHeight ,),
          borderRadius: BorderRadius.circular(110),
           ) ))
             ],
          ),
          Container(
            padding: EdgeInsets.only(top: ScreenUtil().setHeight(30)),
            child: Text("159****8768",style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: ScreenUtil().setSp(28)
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(10),bottom: ScreenUtil().setHeight(40)),
            child:
          Text("UID ${UID}",style: TextStyle(
            color: Colors.white,
            fontSize: ScreenUtil().setSp(22)
          ),))
        ],
      ),
   
    ),

    GestureDetector(
     child:Container(
       decoration: BoxDecoration(
         border: Border(bottom: BorderSide(width: 1,color: Colors.grey),)
       ),
       padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(55), ScreenUtil().setHeight(40), ScreenUtil().setWidth(55), ScreenUtil().setHeight(40)),
            child: Row(
              children: <Widget>[
                Image.asset("Images/Myself/Icons/myAssets/MyAss.png",width: ScreenUtil().setWidth(50),height: ScreenUtil().setHeight(50),),
                Container(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                  child: Text("登录"),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Image.asset("Images/Currency/YouJianTou/Rectangle.png",width: ScreenUtil().setWidth(40),height: ScreenUtil().setHeight(40),),
                  )
                  )
              ],
            ),
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
          },
          ),
  
    GestureDetector(
     child:Container(
       decoration: BoxDecoration(
         border: Border(bottom: BorderSide(width: 1,color: Colors.grey),)
       ),
       padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(55), ScreenUtil().setHeight(40), ScreenUtil().setWidth(55), ScreenUtil().setHeight(40)),
            child: Row(
              children: <Widget>[
                Image.asset("Images/Myself/Icons/Assets/Ass.png",width: ScreenUtil().setWidth(50),height: ScreenUtil().setHeight(50),),
                Container(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                  child: Text("实名认证"),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Image.asset("Images/Currency/YouJianTou/Rectangle.png",width: ScreenUtil().setWidth(40),height: ScreenUtil().setHeight(40),),
                  )
                  )
              ],
            ),
          ),
          onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadIdCard()));
            print("我的");
          },
          ),
  
    GestureDetector(
     child:Container(
       decoration: BoxDecoration(
         border: Border(bottom: BorderSide(width: 1,color: Colors.grey),)
       ),
       padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(55), ScreenUtil().setHeight(40), ScreenUtil().setWidth(55), ScreenUtil().setHeight(40)),
            child: Row(
              children: <Widget>[
                Image.asset("Images/Myself/Icons/card/card.png",width: ScreenUtil().setWidth(50),height: ScreenUtil().setHeight(50),),
                Container(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                  child: Text("收款方式"),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Image.asset("Images/Currency/YouJianTou/Rectangle.png",width: ScreenUtil().setWidth(40),height: ScreenUtil().setHeight(40),),
                  )
                  )
              ],
            ),
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethod()));
          },
          ),
  
    GestureDetector(
     child:Container(
       decoration: BoxDecoration(
         border: Border(bottom: BorderSide(width: 1,color: Colors.grey),)
       ),
       padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(55), ScreenUtil().setHeight(40), ScreenUtil().setWidth(55), ScreenUtil().setHeight(40)),
            child: Row(
              children: <Widget>[
                Image.asset("Images/Myself/Icons/safe/safe.png",width: ScreenUtil().setWidth(50),height: ScreenUtil().setHeight(50),),
                Container(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                  child: Text("安全中心"),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Image.asset("Images/Currency/YouJianTou/Rectangle.png",width: ScreenUtil().setWidth(40),height: ScreenUtil().setHeight(40),),
                  )
                  )
              ],
            ),
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SafetyCenter()));
          },
          )
  
  ],
),

    );
      
    
  }
}