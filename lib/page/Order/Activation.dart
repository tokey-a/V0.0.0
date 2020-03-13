import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Activation extends StatefulWidget {
  final titleBar;
  Activation({Key key,this.titleBar});
  @override
  _ActivationState createState() => _ActivationState();
}

class _ActivationState extends State<Activation> {
  String text;
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
              "${widget.titleBar}",
              style: TextStyle(
                color: Color.fromRGBO(92, 92, 92, 1),
                fontSize: ScreenUtil().setSp(32),
              ),
            ),
      ),
      body: 
      Container(
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(36),right: ScreenUtil().setWidth(36)),
        child:
      ListView(
        children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: ScreenUtil().setHeight(40),bottom: ScreenUtil().setHeight(12)),
          child: Text("描述：",style: TextStyle(
            // color: Color.fromARGB(89, 89, 89, 1),
            fontSize: ScreenUtil().setSp(28)
          ),),
        ),
        Container(
          child: TextField(
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: "请描述您的问题",
              hintStyle: TextStyle(
                color: Color.fromRGBO(161, 161, 161, 1),
                fontSize: ScreenUtil().setSp(28)
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
              fillColor: Color.fromRGBO(231, 231, 231, 1),
              filled: true,
            ),
           maxLines: 10,
           onChanged: (vel){
             setState(() {
               text=vel;
             });
           },
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: ScreenUtil().setHeight(48),bottom: ScreenUtil().setHeight(49)),
          child: Text("上传收款凭证：",style: TextStyle(
            color: Color.fromRGBO(89, 89, 89, 1),
            fontSize: ScreenUtil().setSp(28)
          ),
        ),
        ),
          Container(
//上传照片
          ),

        GestureDetector(child:
        Container(
          padding: EdgeInsets.only(top: ScreenUtil().setHeight(16),bottom: ScreenUtil().setHeight(16)),
          margin: EdgeInsets.only(left: ScreenUtil().setWidth(135),right: ScreenUtil().setWidth(135)),
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
           if (text==""||text==null) {
              Fluttertoast.showToast(msg: "请输入描述的问题",
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.grey[300],
              );
              print("object");
               print(text);
            } else {
               print(text);
            }
        },
        ),
      ],),)
    );
  }
}