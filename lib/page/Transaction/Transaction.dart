import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/page/Transaction/Title.dart';
import 'package:tokpay/page/Transaction/card.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  static bool stateUser = true; //判断用户是否实名注册
  bool _switchItem = false;
   //是否开启接单开关
  Widget build(BuildContext context) {
    return  Container(
      color:Color.fromRGBO(242, 242, 242, 1),
      child:
     Column(
      children: <Widget>[
        TitleTran(),//头部信息栏
         Container(
            padding: EdgeInsets.fromLTRB(
                ScreenUtil().setWidth(32),
                ScreenUtil().setHeight(20),
                ScreenUtil().setWidth(0),
                ScreenUtil().setHeight(20)),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                        width: ScreenUtil().setWidth(1),
                        color: Color.fromRGBO(216, 216, 216, 1)),
                    bottom: BorderSide(
                        width: ScreenUtil().setWidth(1),
                        color: Color.fromRGBO(216, 216, 216, 1)))),
            child: Row(
              children: <Widget>[
                Text(
                  "是否开启接单",
                  style: TextStyle(
                    color: Color.fromRGBO(72, 87, 110, 1),
                    fontSize: ScreenUtil().setSp(28),
                  ),
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerRight,
                  child: CupertinoSwitch(
                      activeColor: Color.fromRGBO(31, 120, 228, 1),
                      value: _switchItem,
                      onChanged: (e) {
                        setState(() {
                          if (stateUser == false) {
                            print(stateUser);
                            showDialog(context: context,
                             builder: (context) => SimpleDialog(
                               shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)
                                                )
                                                ),
                                                titlePadding: EdgeInsets.all(0),
                                                title: GestureDetector(
                                              child: Container(
                                                  width: double.infinity,
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Image.asset(
                                                    "Images/Currency/close/close.png",
                                                    width: ScreenUtil()
                                                        .setWidth(60),
                                                    height: ScreenUtil()
                                                        .setHeight(60),
                                                  )),
                                                  onTap: (){
                                                    Navigator.of(context).pop();
                                                  },
                                                  ),
                                                children: <Widget>[
                                                  Container(
                                            padding: EdgeInsets.only(
                                              top: ScreenUtil().setHeight(40),
                                                bottom:
                                                    ScreenUtil().setHeight(60)),
                                            child: Text(
                                              "您需要先申请成为卡商才可接单",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color.fromRGBO(92, 92, 92, 1),
                                                fontSize:
                                                    ScreenUtil().setSp(32),
                                              ),
                                            ),
                                          ),
                                         GestureDetector(
                                           child: Container(
                                             margin: EdgeInsets.only(left: ScreenUtil().setWidth(56),right: ScreenUtil().setWidth(56)),
                                             padding: EdgeInsets.only(top: ScreenUtil().setHeight(16),bottom: ScreenUtil().setHeight(16)),
                                             decoration: BoxDecoration(
                                               color: Color.fromRGBO(0, 100, 255, 1),
                                               borderRadius: BorderRadius.all(Radius.circular(2))
                                             ),
                                             alignment: Alignment.center,
                                             width: double.infinity,
                                             child: Text("立即申请",style: TextStyle(
                                               color: Colors.white,
                                               fontSize: ScreenUtil().setSp(32)
                                             ),),
                                           ),
                                           onTap: (){
                                            //  Navigator.push(context, MaterialPageRoute(builder: (context)=>null));
                                             print("object");
                                           },
                                         )
                                          
                                       
                                                ],
                             )
                            );
                          } else {
                            if (_switchItem == true) {
                              //switch已选中，用户关闭事件
                              showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (context) => SimpleDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        title: Stack(
                                          children: <Widget>[
                                            GestureDetector(
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: ScreenUtil()
                                                          .setHeight(17),
                                                      right: ScreenUtil()
                                                          .setWidth(26)),
                                                  width: double.infinity,
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Image.asset(
                                                    "Images/Currency/close/close.png",
                                                    width: ScreenUtil()
                                                        .setWidth(60),
                                                    height: ScreenUtil()
                                                        .setHeight(60),
                                                  )),
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            Center(
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                    top: ScreenUtil()
                                                        .setHeight(40)),
                                                child: Text(
                                                  "确定停止接单任务吗？",
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          92, 92, 92, 1),
                                                      fontSize: ScreenUtil()
                                                          .setSp(30)),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(
                                              top: ScreenUtil().setHeight(40),
                                                bottom:
                                                    ScreenUtil().setHeight(60)),
                                            child: Text(
                                              "停止后系统将不再为您派单",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    248, 86, 74, 1),
                                                fontSize:
                                                    ScreenUtil().setSp(30),
                                              ),
                                            ),
                                          ),
                                          
                                            Row(
                                            children: <Widget>[
                                              Expanded(
                                                child:GestureDetector(
                                                child: Container(
                                                  padding: EdgeInsets.only(top:ScreenUtil().setHeight(20),bottom: ScreenUtil().setHeight(20)),
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          top: BorderSide(
                                                              width: ScreenUtil()
                                                                  .setWidth(2),
                                                              color: Color
                                                                  .fromRGBO(
                                                                      216,
                                                                      216,
                                                                      216,
                                                                      1)),
                                                          right: BorderSide(
                                                              width: ScreenUtil()
                                                                  .setWidth(2),
                                                              color: Color
                                                                  .fromRGBO(
                                                                      216,
                                                                      216,
                                                                      216,
                                                                      1)))),
                                                  child: Text("知道了",style: TextStyle(
                                                    color: Color.fromRGBO(164, 164, 164, 1),
                                                    fontSize: ScreenUtil().setSp(26)
                                                  ),),
                                                ),
                                                onTap: (){
                                                  Navigator.of(context).pop();
                                                },
                                                )
                                              ),
                                            
                                              Expanded(
                                                child:GestureDetector(
                                                child: Container(
                                                  padding: EdgeInsets.only(top:ScreenUtil().setHeight(20),bottom: ScreenUtil().setHeight(20)),
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          top: BorderSide(
                                                              width: ScreenUtil()
                                                                  .setWidth(2),
                                                              color: Color
                                                                  .fromRGBO(
                                                                      216,
                                                                      216,
                                                                      216,
                                                                      1)),
                                                          right: BorderSide(
                                                              width: ScreenUtil()
                                                                  .setWidth(2),
                                                              color: Color
                                                                  .fromRGBO(
                                                                      216,
                                                                      216,
                                                                      216,
                                                                      1)))),
                                                  child: Text("确定",style: TextStyle(
                                                    color: Color.fromRGBO(0, 100, 255, 1),
                                                    fontSize: ScreenUtil().setSp(26),
                                                    fontWeight: FontWeight.w600
                                                  ),),
                                                ),
                                                onTap: (){
                                                  setState(() {
                                                     Navigator.of(context).pop(_switchItem=e);
                                                  });
                                                 
                                                  // return  _switchItem = e;
                                                },
                                                )
                                              ),
                                            
                                            ],
                                          )
                                        ],
                                        contentPadding: EdgeInsets.all(0),
                                        titlePadding: EdgeInsets.all(0),
                                      ));

                            } else {
                              //switch未选中，用户打开事件
                              _switchItem = e;
                              print(_switchItem);
                            }
                          }
                        });
                      }),
                ))
              ],
            )),
        stateUser ? StateUser() : StateUserNone(),
      ],
    ),
    );
  }
} 
//用户已注册
class StateUser extends StatefulWidget {
  @override
  _StateUserState createState() => _StateUserState();
}

class _StateUserState extends State<StateUser> {
  String todayToList = "345"; //今日派单
  String todayGetList = "3"; //今日接单
  String wages = "123"; //今日收入
  List assetsType = ["1", "2", "1"]; //单子类型 1买入单 2卖出单
  List overType = ["1", "2", "1"]; //单子状态 1待付款 2已取消
  List priceOnly = ["1", "2", "3"]; //单价
  List price = ["1", "2", "3"]; //交易额
  List time = ["1", "2", "3"]; //时间
  @override
  Widget build(BuildContext context) {
    return Expanded(
        // padding: EdgeInsets.all(0),
        // physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "今日派单",
                          style: TextStyle(
                              color: Color.fromRGBO(141, 150, 160, 1),
                              fontSize: ScreenUtil().setSp(26)),
                        ),
                        Text(
                          todayToList,
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
                          "今日接单",
                          style: TextStyle(
                              color: Color.fromRGBO(141, 150, 160, 1),
                              fontSize: ScreenUtil().setSp(26)),
                        ),
                        Text(
                          todayGetList,
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
                          "今日收入(USDT)",
                          style: TextStyle(
                              color: Color.fromRGBO(141, 150, 160, 1),
                              fontSize: ScreenUtil().setSp(26)),
                        ),
                        Text(
                          wages,
                          style: TextStyle(
                              color: Color.fromRGBO(72, 87, 110, 1),
                              fontSize: ScreenUtil().setSp(32)),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          width: double.infinity,
          margin: EdgeInsets.only(
              top: ScreenUtil().setHeight(8),
              bottom: ScreenUtil().setHeight(10)),
          padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(20),
              bottom: ScreenUtil().setHeight(20),
              left: ScreenUtil().setWidth(32)),
          child: Text(
            "今日派单",
            style: TextStyle(
              color: Color.fromRGBO(72, 87, 110, 1),
              fontSize: ScreenUtil().setSp(28),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(child: CardView(),
          
        )
      ])
        
    );
  }
}

//用户未注册

class StateUserNone extends StatefulWidget {
  @override
  _StateUserNoneState createState() => _StateUserNoneState();
}

class _StateUserNoneState extends State<StateUserNone> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
 Container(
    
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(90)),
      child: Image.asset(
        "Images/Assets/StateUserNone/StateUserNone.png",
        width: ScreenUtil().setWidth(160),
        height: ScreenUtil().setHeight(160),
      ),
    ),
    Container(padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
    child: Text("-暂无订单记录-",style: TextStyle(
      color: Color.fromRGBO(192, 197, 203, 1),
      fontSize: ScreenUtil().setSp(28)
    ),),)
    ]);
  }
}
