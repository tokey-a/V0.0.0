import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Recharge extends StatefulWidget {
  @override
  _RechargeState createState() => _RechargeState();
}

class _RechargeState extends State<Recharge>
    with SingleTickerProviderStateMixin {
  _RechargeState();
  List tabs = ["充值CNY", "充值USDT"];
  TabController tabController;
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return buildTab();
  }

  Widget buildTab() {
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
              "充值",
              style: TextStyle(
                color: Color.fromRGBO(92, 92, 92, 1),
                fontSize: ScreenUtil().setSp(32),
              ),
            ),
            bottom: tabsView()),
        body: TabBarView(controller: tabController, children: <Widget>[
          Text("data"),
          Container(
            color: Colors.white,
            child: RechargeUSDT(),
          ),
          
        ]));
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

//构建tabbars选项卡视图
  tabsView() {
    Widget tabBar = TabBar(
        isScrollable: false,
        indicatorWeight: ScreenUtil().setWidth(6),
        labelStyle: TextStyle(
            fontSize: ScreenUtil().setSp(28), fontWeight: FontWeight.w600),
        labelColor: Color.fromRGBO(31, 120, 228, 1),
        unselectedLabelColor: Color.fromRGBO(161, 179, 201, 1),
        indicatorSize: TabBarIndicatorSize.label,
        controller: tabController,
        tabs: tabs.map((e) => Tab(text: e)).toList());
    return tabBar;
  }
}

//充值子页面
class RechargeUSDT extends StatefulWidget {
  @override
  _RechargeUSDTState createState() => _RechargeUSDTState();
}

class _RechargeUSDTState extends State<RechargeUSDT> {
  String address = "0xcB6b7599DCcDD7Feb245r4744D2aEf9a54E";
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Container(
        color: Colors.white,
        padding: EdgeInsets.only(
            top: ScreenUtil().setHeight(36),
            left: ScreenUtil().setWidth(55),
            right: ScreenUtil().setWidth(55)),
        child: Column(
          children: <Widget>[
            Text(
              "充值价值￥50000CNY的USDT即可激活资产账户",
              style: TextStyle(
                  color: Color.fromRGBO(238, 59, 25, 1),
                  fontSize: ScreenUtil().setSp(26)),
            ),
            Container(
              margin: EdgeInsets.only(top: ScreenUtil().setHeight(70)),
              child: Text(
                "扫描下方二维码可获得充币地址",
                style: TextStyle(
                  color: Color.fromRGBO(114, 115, 125, 1),
                  fontSize: ScreenUtil().setSp(28),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(28),
                  bottom: ScreenUtil().setHeight(23)),
              child: Image.asset(
                "Images/Login/RegisterSuccess/6icon/6icon.png",
                width: ScreenUtil().setWidth(400),
                height: ScreenUtil().setHeight(400),
                fit: BoxFit.fitWidth,
              ),
            ),
            GestureDetector(
              child: Text(
                "点击保存地址二维码",
                style: TextStyle(
                  color: Color.fromRGBO(31, 120, 228, 1),
                  fontSize: ScreenUtil().setSp(24),
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                print("保存二维码");
              },
            ),
            Container(
              margin: EdgeInsets.only(
                  top: ScreenUtil().setHeight(41),
                  bottom: ScreenUtil().setHeight(37)),
              color: Color.fromRGBO(216, 216, 216, 1),
              height: ScreenUtil().setHeight(2),
            ),
            Container(
              margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(26)),
              child: Text(
                address,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Color.fromRGBO(68, 71, 100, 1),
                    fontSize: ScreenUtil().setSp(28)),
              ),
            ),
            GestureDetector(
             child:Row(
               mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               
               
                  Text("点击复制地址",style: TextStyle(
                     color: Color.fromRGBO(31, 120, 228, 1),
                     fontSize: ScreenUtil().setSp(26),
                   ),),
                 
               
               Image.asset("Images/Assets/Recharge/CopyAddress/copy.png",width: ScreenUtil().setWidth(18),height: ScreenUtil().setHeight(18),),
                 
               
             ],
           ),
           onTap: (){
             print("object");
           },
            )
            
           
           
          ],
        ),
      ),
    ]);
  }
}
