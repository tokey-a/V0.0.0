import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardView extends StatefulWidget {
  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  List assetsType = ["1", "2", "1"];
  List overType = ["1", "2", "1"];
  List priceOnly = ["123.9", "222.2", "313.40"]; //单价
  List price = ["1", "2", "3"]; //交易额
  List day = ["2019-01-10", "2020-01-01", "2020-09-09"]; //时间日期
  List time = ["11：01：11", "12：02：22", "13：03：33"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0),
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) => Card(
        margin: EdgeInsets.fromLTRB(
            ScreenUtil().setWidth(32),
            ScreenUtil().setHeight(10),
            ScreenUtil().setWidth(32),
            ScreenUtil().setHeight(10)),
        elevation: 10,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(
                  ScreenUtil().setWidth(36),
                  ScreenUtil().setHeight(24),
                  ScreenUtil().setWidth(36),
                  ScreenUtil().setHeight(24)),
              child: Row(
                children: <Widget>[
                  assetsType[index] == "1"
                      ? Text(
                          "买入单",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 100, 255, 1),
                              fontSize: ScreenUtil().setSp(32),
                              fontWeight: FontWeight.bold),
                        )
                      : Text(
                          "卖出单",
                          style: TextStyle(
                              color: Color.fromRGBO(248, 86, 74, 1),
                              fontSize: ScreenUtil().setSp(32),
                              fontWeight: FontWeight.bold),
                        ),
                  Container(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
                    child: Text(
                      "500USDT",
                      style: TextStyle(
                        color: Color.fromRGBO(72, 87, 110, 1),
                        fontSize: ScreenUtil().setSp(32),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.centerRight,
                    child: overType[index] == "1"
                        ? Text(
                            "待付款",
                            style: TextStyle(
                                color: Color.fromRGBO(4, 102, 255, 1),
                                fontSize: ScreenUtil().setSp(32)),
                          )
                        : Text(
                            "已取消",
                            style: TextStyle(
                                color: Color.fromRGBO(141, 150, 160, 1),
                                fontSize: ScreenUtil().setSp(32)),
                          ),
                  ))
                ],
              ),
            ),
            Container(
              color: Color.fromRGBO(243, 246, 255, 1),
              padding: EdgeInsets.fromLTRB(
                  ScreenUtil().setWidth(32),
                  ScreenUtil().setHeight(25),
                  ScreenUtil().setWidth(32),
                  ScreenUtil().setHeight(25)),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      "单价",
                      style: TextStyle(
                        color: Color.fromRGBO(141, 150, 160, 1),
                        fontSize: ScreenUtil().setSp(28),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "￥${priceOnly[index]}",
                      style: TextStyle(
                        color: Color.fromRGBO(72, 87, 110, 1),
                        fontSize: ScreenUtil().setSp(28),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Container(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          height: ScreenUtil().setHeight(1),
                        ),
          
            Container(
              color: Color.fromRGBO(243, 246, 255, 1),
              padding: EdgeInsets.fromLTRB(
                  ScreenUtil().setWidth(32),
                  ScreenUtil().setHeight(25),
                  ScreenUtil().setWidth(32),
                  ScreenUtil().setHeight(25)),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      "交易额",
                      style: TextStyle(
                        color: Color.fromRGBO(141, 150, 160, 1),
                        fontSize: ScreenUtil().setSp(28),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "￥${price[index]}",
                      style: TextStyle(
                        color: Color.fromRGBO(72, 87, 110, 1),
                        fontSize: ScreenUtil().setSp(28),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Container(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          height: ScreenUtil().setHeight(1),
                        ),
         
            Container(
              color: Color.fromRGBO(243, 246, 255, 1),
              padding: EdgeInsets.fromLTRB(
                  ScreenUtil().setWidth(32),
                  ScreenUtil().setHeight(25),
                  ScreenUtil().setWidth(32),
                  ScreenUtil().setHeight(25)),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      "时间",
                      style: TextStyle(
                        color: Color.fromRGBO(141, 150, 160, 1),
                        fontSize: ScreenUtil().setSp(28),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                        // color: Colors.red,
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "${day[index]}",
                      style: TextStyle(
                        color: Color.fromRGBO(72, 87, 110, 1),
                                      fontSize: ScreenUtil().setSp(28),
                      ),
                    ),
                  )),
                   Container(
                                  margin: EdgeInsets.only(
                                      left: ScreenUtil().setWidth(15)),
                                  child: Text(
                                    "${time[index]}",
                                    style: TextStyle(
                                      color: Color.fromRGBO(72, 87, 110, 1),
                                      fontSize: ScreenUtil().setSp(28),
                                    ),
                                  ),
                                )
                ],
              ),
            ),
            Container(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          height: ScreenUtil().setHeight(1),
                        ),
         
          
          ],
        ),
      ),
    );
  }
}
