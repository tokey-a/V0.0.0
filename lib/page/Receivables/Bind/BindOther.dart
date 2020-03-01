import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BindOther extends StatefulWidget {
  @override
  final tabbarTitle;
  const BindOther({Key key, this.tabbarTitle})
      : super(key: key);
  _BindOtherState createState() => _BindOtherState();
}

class _BindOtherState extends State<BindOther> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // elevation: 1,
          centerTitle: true,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          leading: IconButton(
          icon: Image.asset("Images/Currency/ZuoJianTou/Rectangle.png",width: ScreenUtil().setWidth(38),height: ScreenUtil().setHeight(38),),
          onPressed: ()=>Navigator.of(context).pop(),
        ),
        title: Text("绑定${widget.tabbarTitle}"),
      ),
      body: ListView(
        children: <Widget>[
      Container(
        color: Colors.white,
        padding: EdgeInsets.only(top:ScreenUtil().setHeight(38),left: ScreenUtil().setWidth(55),right: ScreenUtil().setWidth(55)),
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        Text("姓名",style: TextStyle(
            color: Color.fromRGBO(114, 115, 125, 1),
            fontSize: ScreenUtil().setSp(28),
            fontWeight: FontWeight.w600
          ),), 
             Container(
          margin: EdgeInsets.only(top: ScreenUtil().setHeight(10),bottom: ScreenUtil().setHeight(60)),
          child:TextField(
            enableInteractiveSelection:false,
            cursorColor: Colors.black,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(36)
            ),
            decoration: InputDecoration(
                      isDense: true,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(31, 120, 228, 1),
                        width: 2,
                      )),
            ),
            onSubmitted: (text){
              print(text);
            },
            ),
          ),
          Text("${widget.tabbarTitle}账号",style: TextStyle(
            color: Color.fromRGBO(114, 115, 125, 1),
            fontSize: ScreenUtil().setSp(28),
            fontWeight: FontWeight.w600
          ),),
          Container(
          margin: EdgeInsets.only(top: ScreenUtil().setHeight(10),bottom: ScreenUtil().setHeight(60)),
          child:TextField(
            enableInteractiveSelection:false,
            keyboardType: TextInputType.number,
            cursorColor: Colors.black,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(36)
            ),
            decoration: InputDecoration(
                      isDense: true,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(31, 120, 228, 1),
                        width: 2,
                      )),
            ),
            onSubmitted: (text){
              print(text);
            },
            ),
          ),
          Text("添加收款二维码",style: TextStyle(
            color: Color.fromRGBO(114, 115, 125, 1),
            fontSize: ScreenUtil().setSp(28),
            fontWeight: FontWeight.w600
          ),),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(37)),
           height: ScreenUtil().setHeight(120),
           width: ScreenUtil().setWidth(150),
          ),
          Container(
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(56)),
            color: Color.fromRGBO(31, 120, 228, 1),
            width: double.infinity,
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(2),
                bottom: ScreenUtil().setHeight(2)),
            child: RaisedButton(
                elevation: 0,
                child: Text(
                  "绑定",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                color: Color.fromRGBO(31, 120, 228, 1),
                onPressed: () {
                  print("绑定");
                })),
      ],
    )
    )],)
    );
  }
}
