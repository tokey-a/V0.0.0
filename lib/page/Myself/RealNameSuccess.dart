import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RealNameSuccess extends StatefulWidget {
  final result;
  RealNameSuccess({Key key,this.result}):super(key:key);
  @override
  _RealNameSuccessState createState() => _RealNameSuccessState();
}

class _RealNameSuccessState extends State<RealNameSuccess> {
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
      body:widget.result?ResultTrue():ResultFalse(),
    );
  }
}
class ResultTrue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: ScreenUtil().setHeight(130),bottom: ScreenUtil().setHeight(36)),
          child: Image.asset("Images/Myself/RealName/RealNameTrue/wite.png",width: ScreenUtil().setWidth(136),height: ScreenUtil().setHeight(136),),
        ),
        Container(
          alignment: Alignment.center,
          child: Text("审核中，请耐心等待",style: TextStyle(
            color: Color.fromRGBO(87, 119, 166, 1),
            fontSize: ScreenUtil().setSp(28)
          ),),
        )
      ],
    );
  }
}
class ResultFalse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: ScreenUtil().setHeight(130),bottom: ScreenUtil().setHeight(30)),
          child: Image.asset("Images/Myself/RealName/RealNameFalse/false.png",width: ScreenUtil().setWidth(136),height: ScreenUtil().setHeight(136),),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(32)),
          child: Text("审核未通过",style: TextStyle(
            color: Color.fromRGBO(87, 119, 166, 1),
            fontSize: ScreenUtil().setSp(28)
          ),),
        ),
        Text("身份信息未通过",style: TextStyle(
            color: Color.fromRGBO(87, 119, 166, 1),
            fontSize: ScreenUtil().setSp(32)
          ),),
          Expanded(child: Container(
            margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(219),left: ScreenUtil().setWidth(175),right: ScreenUtil().setWidth(175)),
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            child: RaisedButton(
              elevation: 0,
              padding: EdgeInsets.only(top: ScreenUtil().setHeight(23),bottom: ScreenUtil().setHeight(23),left: ScreenUtil().setWidth(130),right: ScreenUtil().setWidth(130)),
              color: Color.fromRGBO(0, 100, 255, 1),
              child: Text("重新提交",style: TextStyle(
                color: Colors.white,
                fontSize: ScreenUtil().setSp(32)
              ),),
              onPressed: (){
              print("object");
            }
            
            ),
          ))
      ],
    );
  }
}