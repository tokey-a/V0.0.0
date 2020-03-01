import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tokpay/page/Order/tabbars/lib/extends.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> with TickerProviderStateMixin {
 TabController tabController;
  TabController tabController1;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    tabController1 = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          top: true,
          child: 
      Column(
        children: <Widget>[
          
          TabBar(
            indicator: ColorTabIndicator(Colors.blue),
            labelColor: Colors.black,
            tabs: [
              Tab(text: "全部"),
              Tab(text: "出售"),
              Tab(text: "购买"),
            ],
            controller: tabController,
          ),
          Expanded(
            child: ExtendedTabBarView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    TabBar(
                      indicator: ColorTabIndicator(Colors.red),
                      labelColor: Colors.black,
                      tabs: [
                        Tab(text: "进行中"),
                        Tab(text: "申诉中"),
                        Tab(text: "已完成"),
                        Tab(text: "已取消"),
                      ],
                      controller: tabController1,
                    ),
                    Expanded(
                      child: ExtendedTabBarView(
                        children: <Widget>[
                          Linding(),
                          Text("Tab01"),
                          Text("Tab02"),
                          Text("Tab03"),
                        ],
                        controller: tabController1,
                      ),
                    )
                  ],
                ),
                Text("Tab1"),
                Text("Tab2")
              ],
              controller: tabController,
            ),
          )
        ],
      ),
    
          
          
           ));
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}

class Linding extends StatefulWidget {
  @override
  _LindingState createState() => _LindingState();
}

class _LindingState extends State<Linding> {
  bool aa=true;
  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.only(top: ScreenUtil().setHeight(24),left: ScreenUtil().setWidth(32),right: ScreenUtil().setWidth(32)),
    
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(
                              ScreenUtil().setWidth(36),
                              ScreenUtil().setHeight(24),
                              ScreenUtil().setWidth(36),
                              ScreenUtil().setHeight(29),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5))),
                            child: Row(
                              children: <Widget>[
                                aa
                                    ? Text(
                                        "买入单",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(0, 100, 255, 1),
                                            fontSize: ScreenUtil().setSp(32),
                                            fontWeight: FontWeight.bold),
                                      )
                                    : Text(
                                        "卖出单",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(248, 86, 74, 1),
                                            fontSize: ScreenUtil().setSp(32),
                                            fontWeight: FontWeight.bold),
                                      ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: ScreenUtil().setWidth(10)),
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
                                  child: aa
                                      ? Text(
                                          "待付款",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  4, 102, 255, 1),
                                              fontSize: ScreenUtil().setSp(32)),
                                        )
                                      : Text(
                                          "已取消",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  141, 150, 160, 1),
                                              fontSize: ScreenUtil().setSp(32)),
                                        ),
                                ))
                              ],
                            ),
                          ),
                          Container(
                              color: Color.fromRGBO(243, 246, 255, 1),
                              padding: EdgeInsets.only(
                                  left: ScreenUtil().setWidth(36),
                                  top: ScreenUtil().setHeight(25),
                                  right: ScreenUtil().setWidth(36),
                                  bottom: ScreenUtil().setHeight(29)),
                              child: Column(children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "单价",
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(141, 150, 160, 1),
                                          fontSize: ScreenUtil().setSp(28),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "priceOnly[index]",
                                        style: TextStyle(
                                          color: Color.fromRGBO(72, 87, 110, 1),
                                          fontSize: ScreenUtil().setSp(28),
                                        ),
                                      ),
                                    ))
                                  ],
                                ),
                                Container(
                                  color: Color.fromRGBO(0, 0, 0, 0.3),
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setHeight(13),
                                      bottom: ScreenUtil().setHeight(24)),
                                  height: ScreenUtil().setHeight(1),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "price[index]",
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(141, 150, 160, 1),
                                          fontSize: ScreenUtil().setSp(28),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "1231",
                                        style: TextStyle(
                                          color: Color.fromRGBO(72, 87, 110, 1),
                                          fontSize: ScreenUtil().setSp(28),
                                        ),
                                      ),
                                    ))
                                  ],
                                ),
                                Container(
                                  color: Color.fromRGBO(0, 0, 0, 0.3),
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setHeight(13),
                                      bottom: ScreenUtil().setHeight(24)),
                                  height: ScreenUtil().setHeight(1),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5))),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            "时间",
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  141, 150, 160, 1),
                                              fontSize: ScreenUtil().setSp(28),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          margin: EdgeInsets.only(
                                              top: ScreenUtil().setHeight(10)),
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "time[index]",
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  72, 87, 110, 1),
                                              fontSize: ScreenUtil().setSp(28),
                                            ),
                                          ),
                                        )),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: ScreenUtil().setWidth(10)),
                                          child: Text(
                                            "11：08：13",
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  72, 87, 110, 1),
                                              fontSize: ScreenUtil().setSp(28),
                                            ),
                                          ),
                                        )
                                      ],
                                    ))
                              ]))
                        
                        ],
                      ),
                   
    );
  }
}
