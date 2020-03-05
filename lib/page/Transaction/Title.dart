import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleTran extends StatefulWidget {
  @override
  _TitleTranState createState() => _TitleTranState();
}

class _TitleTranState extends State<TitleTran> {  static bool stateUser = true; //判断用户是否实名注册
  String salesNum = "2099.926"; //出售量
  String buyNum = "72.9564"; //购买量
  String averageM = "08"; //平均放行速度--分
  String averageS = "32"; //平均放行速度--秒
  @override
  Widget build(BuildContext context) {
    return 
        Container(
           color: Colors.white,
          padding: EdgeInsets.only(top: ScreenUtil().setHeight(38)),
          // margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(25),left: ScreenUtil().setWidth(10),right: ScreenUtil().setWidth(10)),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: ScreenUtil().setHeight(38),
                        bottom: ScreenUtil().setHeight(38)),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "出售量",
                          style: TextStyle(
                              color: Color.fromRGBO(141, 150, 160, 1),
                              fontSize: ScreenUtil().setSp(26)),
                        ),
                        Text(
                          salesNum,
                          style: TextStyle(
                              color: Color.fromRGBO(72, 87, 110, 1),
                              fontSize: ScreenUtil().setSp(32)),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: ScreenUtil().setWidth(1),
                                color: Color.fromRGBO(216, 216, 216, 1)))),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: ScreenUtil().setHeight(38),
                        bottom: ScreenUtil().setHeight(38)),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "购买量",
                          style: TextStyle(
                              color: Color.fromRGBO(141, 150, 160, 1),
                              fontSize: ScreenUtil().setSp(26)),
                        ),
                        Text(
                          buyNum,
                          style: TextStyle(
                              color: Color.fromRGBO(72, 87, 110, 1),
                              fontSize: ScreenUtil().setSp(32)),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: ScreenUtil().setWidth(1),
                                color: Color.fromRGBO(216, 216, 216, 1)))),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "平均放行速度",
                          style: TextStyle(
                              color: Color.fromRGBO(141, 150, 160, 1),
                              fontSize: ScreenUtil().setSp(26)),
                        ),
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, //Row居中
                          children: <Widget>[
                            Text(
                              "${averageM}",
                              style: TextStyle(
                                  color: Color.fromRGBO(72, 87, 110, 1),
                                  fontSize: ScreenUtil().setSp(32)),
                            ),
                            Text(
                              "分",
                              style: TextStyle(
                                  color: Color.fromRGBO(141, 150, 160, 1),
                                  fontSize: ScreenUtil().setSp(26)),
                            ),
                            Text(
                              "${averageM}",
                              style: TextStyle(
                                  color: Color.fromRGBO(72, 87, 110, 1),
                                  fontSize: ScreenUtil().setSp(32)),
                            ),
                            Text(
                              "秒",
                              style: TextStyle(
                                  color: Color.fromRGBO(141, 150, 160, 1),
                                  fontSize: ScreenUtil().setSp(26)),
                            ),
                          ],
                        ))
                      ],
                    ),
                  )),
            ],
          ),
        );
       
  }
}