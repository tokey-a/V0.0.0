import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  static bool stateUser = false; //判断用户是否实名注册
  String salesNum = "2099.926"; //出售量
  String buyNum = "72.9564"; //购买量
  String averageM = "08"; //平均放行速度--分
  String averageS = "32"; //平均放行速度--秒
  bool _switchItem = false; //开关

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: ScreenUtil().setHeight(38)),
          color: Colors.white,
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
        ),
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
                                                // contentPadding: EdgeInsets.all(0),
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
                                             print("object");
                                           },
                                         )
                                          
                                       
                                                ],
                             )
                            );
                          } else {
                            if (_switchItem == true) {
                              //switch选中，用户关闭事件
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
                                                  
                                                  Navigator.of(context).pop(_switchItem=e);
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

                            //  _switchItem = f;
                              print(1111222221);
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
    );
  }
}

//是否开启接单

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
        Expanded(
            child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: assetsType.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) => Container(
                      margin: EdgeInsets.fromLTRB(
                        ScreenUtil().setWidth(32),
                        ScreenUtil().setHeight(0),
                        ScreenUtil().setWidth(32),
                        ScreenUtil().setHeight(24),
                      ),
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
                                assetsType[index] == 1
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
                                  child: overType[index] == 1
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
                                        priceOnly[index],
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
                                        price[index],
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
                                            time[index],
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
                    )))
      ],
    ));
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
