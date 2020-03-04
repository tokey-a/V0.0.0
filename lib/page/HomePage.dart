
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/page/Assets/Assets.dart';
import 'package:tokpay/page/Myself/myself.dart';
import 'package:tokpay/page/Order/Order.dart';
import 'package:tokpay/page/Transaction/Transaction.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  
  FocusNode blankNode=FocusNode();
  var appBartitles=['交易','订单','资产','我的'];//底部导航文字
  int _tabIndex = 0;
  var tabImages;
  var pages=[Transaction(), Order(), Assets(), Myself(),];//主页面
    Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return  Text(appBartitles[curIndex],
          style:  TextStyle(fontSize: 20.0, color: const Color(0xff1296db)));
    } else {
      return  Text(appBartitles[curIndex],
          style:  TextStyle(fontSize: 20.0, color: const Color(0xff515151)));
    }
    }
  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }
  Image getTabImage(path) {
    return  Image.asset(path, width:ScreenUtil().setWidth(60.0), height: ScreenUtil().setHeight(60.0));
  }
  void initData(){
    tabImages = [//底部导航栏图片
      [getTabImage('Images/BottomBar/Transaction/Transaction.png'), getTabImage('Images/BottomBar/Transaction-s/Transaction-s.png')],
      [getTabImage('Images/BottomBar/Order/Order.png'), getTabImage('Images/BottomBar/Order-s/Order-s.png')],
      [getTabImage('Images/BottomBar/Assets/Assets.png'), getTabImage('Images/BottomBar/Assets-s/Assets-s.png')],
      [getTabImage('Images/BottomBar/Myself/Myself.png'), getTabImage('Images/BottomBar/Myself-s/Myself-s.png')],
    ];
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,width: 750,height: 1334,);
    initData();
    return Scaffold(
        body:IndexedStack(
          index: _tabIndex,
          children:pages ,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: getTabIcon(0),title:getTabTitle(0)),
            BottomNavigationBarItem(
                icon: getTabIcon(1),title:getTabTitle(1)),
            BottomNavigationBarItem(
                icon: getTabIcon(2),title:getTabTitle(2)),
            BottomNavigationBarItem(
                icon: getTabIcon(3),title:getTabTitle(3)),
          ],
          type: BottomNavigationBarType.fixed,
          //默认选中首页
          currentIndex: _tabIndex,
          iconSize: 10,
          //点击事件
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ));
  }
}