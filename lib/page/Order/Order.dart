import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/page/Order/OrderCard.dart';

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
            indicatorColor: Colors.purple,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.all(0),
            indicator: ColorTabIndicator(Colors.blue),
            labelColor: Colors.black,
            tabs: [
              Tab(
                child: Container(
                  child: Text("data"),
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(30)),
                  decoration: BoxDecoration(
                  ),
                ),
              ),
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
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.black,
                      tabs: [
                        Tab(
                          text: "进行中"),
                        Tab(text: "申诉中"),
                        Tab(text: "已完成"),
                        Tab(text: "已取消"),
                      ],
                      controller: tabController1,
                    ),
                    Expanded(
                      child: ExtendedTabBarView(
                        children: <Widget>[
                          Container(
                            color: Colors.grey[200],
                            child: OnGoing(),),
                           Complaint(),
                            OrderOver(),
                            Cencel(),
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

//进行中
class OnGoing extends StatefulWidget {
  @override
  _OnGoingState createState() => _OnGoingState();
}

class _OnGoingState extends State<OnGoing> {
  @override
  Widget build(BuildContext context) {
    return OrderCard(
      pages: 1,//页面编号 第一个tabs
      type: ["1","1","2"],//页面类型1 购买 2 出售 订单数量长度
      orderState: ["1","1","2"],//订单状态 1：请付款 2：请放行 3：已完成 4:已取消
      
    );
  }
}

//申诉中
class Complaint extends StatefulWidget {
  @override
  _ComplaintState createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
  @override
  Widget build(BuildContext context) {
    return OrderCard(
      pages: 2,//页面编号 第二个tabs
      type: ["1"],//页面类型1 购买 2 出售 订单数量长度
     orderState: ["1",],//订单状态 1：请付款 2：请放行 3：已完成 4:已取消
    );
  }
}

//已完成
class OrderOver extends StatefulWidget {
  @override
  _OrderOverState createState() => _OrderOverState();
}
class _OrderOverState extends State<OrderOver> {
  @override
  Widget build(BuildContext context) {
    return OrderCard(
      pages: 3,//页面编号 第三个tabs
      type: ["1","2"],//页面类型1 购买 2 出售 订单数量长度
      orderState: ["3",'4'],//订单状态 1：请付款 2：请放行 3：已完成 4:已取消
    );
  }
}
//已取消
class Cencel extends StatefulWidget {
  @override
  _CencelState createState() => _CencelState();
}

class _CencelState extends State<Cencel> {
  @override
  Widget build(BuildContext context) {
    return OrderCard(
      pages: 4,//页面编号 第四个tabs
      type: ['1','2',],//页面类型1 购买 2 出售 订单数量长度 
      orderState: ["4",'4',],//订单状态 1：请付款 2：请放行 3：已完成 4:已取消
    );
  }
}