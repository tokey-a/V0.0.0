import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterSuccess extends StatefulWidget {
  @override
  _RegisterSuccessState createState() => _RegisterSuccessState();
}

class _RegisterSuccessState extends State<RegisterSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: RegisterSuccessView() ,
        color: Colors.white,
      )
      
    );
  }
}
class RegisterSuccessView extends StatefulWidget {
  @override
  _RegisterSuccessViewState createState() => _RegisterSuccessViewState();
}

class _RegisterSuccessViewState extends State<RegisterSuccessView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: ScreenUtil().setHeight(130),
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(13),right: ScreenUtil().setWidth(36)),
          child: GestureDetector(child: Text("跳过",style: TextStyle(
            color: Color.fromRGBO(151, 151, 151, 1),
            fontSize: ScreenUtil().setSp(30),
            fontWeight: FontWeight.w200
          ),),
          onTap: (){
            print("跳过");
            Navigator.of(context).pop();
          },
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              margin:EdgeInsets.fromLTRB(ScreenUtil().setWidth(246), ScreenUtil().setHeight(20), ScreenUtil().setWidth(15), ScreenUtil().setHeight(0)),
            child:Image.asset("Images/Login/RegisterSuccess/Success/Success.png",width:ScreenUtil().setWidth(60) ,height: ScreenUtil().setHeight(60),)),
          Container(
            padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
            child: Text("注册成功",style: TextStyle(
              color: Color.fromRGBO(114, 115, 125, 1),
              fontSize: ScreenUtil().setSp(40),
            ),),
          )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top:ScreenUtil().setHeight(151),left: ScreenUtil().setWidth(55),right: ScreenUtil().setWidth(55)),
          height: 2,
          color: Color.fromRGBO(201, 201, 201, 1)
        ),
        Container(
          height: ScreenUtil().setHeight(40),
        ),
         Text("卡商申请",style: TextStyle(
            color: Color.fromRGBO(114, 115, 125, 1),
            fontSize: ScreenUtil().setSp(36),
          ),),
          Container(
          height: ScreenUtil().setHeight(12),
        ),
         Text("成为认证卡商，享有更多服务特权",style: TextStyle(
            color: Color.fromRGBO(135, 136, 151, 1),
            fontSize: ScreenUtil().setSp(26),
            fontWeight: FontWeight.w600
          ),),
          Container(
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(34),left: ScreenUtil().setWidth(0)),
            width: ScreenUtil().setWidth(640),
            height: ScreenUtil().setHeight(512),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
             boxShadow: [BoxShadow(color: Color.fromRGBO(238, 238, 238, 1), offset: Offset(2.0, 2.0),blurRadius: 10.0, spreadRadius: 1.0), BoxShadow(color: Colors.white, offset: Offset(1.0, 1.0)), ],
            ),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(65), ScreenUtil().setHeight(52), ScreenUtil().setWidth(28), ScreenUtil().setHeight(52)),
                      width: ScreenUtil().setWidth(71),
                      height: ScreenUtil().setHeight(66),
                      child: Image.asset("Images/Login/RegisterSuccess/Engoy/e.png",),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(0), ScreenUtil().setHeight(47), ScreenUtil().setWidth(0), ScreenUtil().setHeight(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          
                            Text("享有接单权限",style: TextStyle(
                            color: Color.fromRGBO(114, 115, 125, 1),
                            fontSize: ScreenUtil().setSp(28)
                          ),),
                         
                            Text("卡商可以随时随地轻松接单赚佣金",style: TextStyle(
                            color: Color.fromRGBO(187, 188, 201, 1),
                            fontSize: ScreenUtil().setSp(22)
                          ),)
                        ],
                        )
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: ScreenUtil().setWidth(30),right: ScreenUtil().setWidth(30)),
                  height: ScreenUtil().setHeight(2),
                  color: Color.fromRGBO(237, 237, 237, 1),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(65), ScreenUtil().setHeight(52), ScreenUtil().setWidth(28), ScreenUtil().setHeight(52)),
                      width: ScreenUtil().setWidth(71),
                      height: ScreenUtil().setHeight(66),
                      child: Image.asset("Images/Login/RegisterSuccess/6icon/6icon.png",),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(0), ScreenUtil().setHeight(47), ScreenUtil().setWidth(0), ScreenUtil().setHeight(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          
                            Text("享有6‰交易佣金",style: TextStyle(
                            color: Color.fromRGBO(114, 115, 125, 1),
                            fontSize: ScreenUtil().setSp(28)
                          ),),
                          
                          Text("卡商交易可获得6‰交易佣金",style: TextStyle(
                            color: Color.fromRGBO(187, 188, 201, 1),
                            fontSize: ScreenUtil().setSp(22)
                          ),)
                        ],
                        )
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: ScreenUtil().setWidth(30),right: ScreenUtil().setWidth(30)),
                  height: ScreenUtil().setHeight(2),
                  color: Color.fromRGBO(237, 237, 237, 1),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(65), ScreenUtil().setHeight(52), ScreenUtil().setWidth(28), ScreenUtil().setHeight(0)),
                      width: ScreenUtil().setWidth(71),
                      height: ScreenUtil().setHeight(66),
                      child: Image.asset("Images/Login/RegisterSuccess/OneToOne/OneToOne.png",),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(ScreenUtil().setWidth(0), ScreenUtil().setHeight(47), ScreenUtil().setWidth(0), ScreenUtil().setHeight(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          
                            Text("一对一服务",style: TextStyle(
                            color: Color.fromRGBO(114, 115, 125, 1),
                            fontSize: ScreenUtil().setSp(28)
                          ),),
                          
                            Text("为卡商提供专属社群，一对一社群客服服务。",style: TextStyle(
                            color: Color.fromRGBO(187, 188, 201, 1),
                            fontSize: ScreenUtil().setSp(22)
                          ),)
                        ],
                        )
                    )
                  ],
                ),
                
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:ScreenUtil().setHeight(61)),
            width: ScreenUtil().setWidth(450),
            height: ScreenUtil().setHeight(40),
            child: XieYi(),
          ),
          Container(
          margin: EdgeInsets.only(top:ScreenUtil().setHeight(37)),
          width: ScreenUtil().setWidth(640),
          height: ScreenUtil().setHeight(84),
          color: Colors.blue,
          child: FlatButton(
            child: Text("立即申请",style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: ScreenUtil().setSp(28),
            ),),
            onPressed: (){
              print("立即申请");
            }),
        )
          
      ],
    );
  }
}

class XieYi extends StatefulWidget {
  @override
  _XieYiState createState() => _XieYiState();
}

class _XieYiState extends State<XieYi> {
  bool checkselect=true;
  @override
  Widget build(BuildContext context) {
    return Row(
// crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Checkbox(
                    value: checkselect,
                    activeColor: Color.fromRGBO(0, 120, 236, 1),
                    onChanged:(value){
            setState(() {
              checkselect=value;
            });
            print(checkselect);
          } ,
                  ),Container(
                    child: Text(
                      "阅读并同意",style: TextStyle(
                        fontSize: ScreenUtil().setSp(26)
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      "《卡商服务协议》",style: TextStyle(
                        color: Color.fromRGBO(0, 120, 236, 1),
                        fontSize: ScreenUtil().setSp(26)
                      ),
                    ),
                    onTap: (){
                      print("《卡商服务协议》");
                    },
                  )
      ],
    );
  }
}