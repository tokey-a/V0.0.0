import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/page/Receivables/Bind/BindBank.dart';
import 'package:tokpay/page/Receivables/Bind/BindOther.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool _dataView = true; //收款方式存在为true 不存在为false
  ScrollController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          leading: IconButton(
          icon: Image.asset("Images/Currency/ZuoJianTou/Rectangle.png",width: ScreenUtil().setWidth(38),height: ScreenUtil().setHeight(38),),
          onPressed: ()=>Navigator.of(context).pop(),
        ),
        elevation: 0,
          title: Text(
            "收款方式",
            style: TextStyle(
              color: Color.fromRGBO(92, 92, 92, 1),
              fontSize: ScreenUtil().setSp(32),
            ),
          ),
        ),
        body: ListView(
          controller: _controller,
          children: <Widget>[
            _dataView ? PaymentMethodHave() : PaymentMethodNone()
          ],
        ),
        );
  }
}

class PaymentMethodNone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(158),
                bottom: ScreenUtil().setHeight(56)),
            child: Image.asset(
              "Images/PaymentMethod/PaymentMethodNone/PaymentMethodNone.png",
              width: ScreenUtil().setWidth(150),
              height: ScreenUtil().setHeight(150),
            ),
          ),
          Text(
            "您还没有绑定任何支付方式～",
            style: TextStyle(
                color: Color.fromRGBO(142, 142, 142, 1),
                fontSize: ScreenUtil().setSp(24),
                fontWeight: FontWeight.w200),
          ),
          Container(
              color: Color.fromRGBO(31, 120, 228, 1),
              width: double.infinity,
              padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(2),
                  bottom: ScreenUtil().setHeight(2)),
              margin: EdgeInsets.only(
                  top: ScreenUtil().setHeight(179),
                  left: ScreenUtil().setWidth(55),
                  right: ScreenUtil().setWidth(55)),
              child: RaisedButton(
                  elevation: 0,
                  child: Text(
                    "添加",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  color: Color.fromRGBO(31, 120, 228, 1),
                  onPressed: () {
                    print("支付方式");
                    showModalBottomSheet(
                        context: context, builder: (builder) => BottomSheet());
                  })
                  ),
        ]);
  }
}

class PaymentMethodHave extends StatefulWidget {
  @override
  _PaymentMethodHaveState createState() => _PaymentMethodHaveState();
}

class _PaymentMethodHaveState extends State<PaymentMethodHave> {
  //模拟数据
  int items = 6; //列表数量
  List type = ["1", "2", "3","1","2","2"]; //传入支付类型 1：支付宝 2：银行卡 3：微信支付
  List name = ["杨燕燕", "杨燕燕", "杨燕燕","张三","张三","张三"]; //名字
  List tel = ["18888888888", "6003 2938 0394 2834", "18888888888","12312312312","12312312312","12312312312"]; //电话号码
  List _switchItemA = [true, false, true,false,false,false]; //模拟选中状态
  // bool _switchItemA;
ScrollController _controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller,
          itemCount: items,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                      padding:
                          EdgeInsets.only(right: ScreenUtil().setWidth(29)),
                      color: Color.fromRGBO(255, 255, 255, 1),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                ScreenUtil().setWidth(36),
                                ScreenUtil().setHeight(28),
                                ScreenUtil().setWidth(20),
                                ScreenUtil().setHeight(0)),
                            child: Image.asset(
                              type[index] == "1"
                                  ? "Images/PaymentMethod/PaymentType/Alipay/Alipay.png"
                                  : type[index] == "2"
                                      ? "Images/PaymentMethod/PaymentType/BankCard/BankCard.png"
                                      : "Images/PaymentMethod/PaymentType/WeChat/wechat.png",
                              width: ScreenUtil().setWidth(38),
                              height: ScreenUtil().setHeight(38),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.only(
                                top: ScreenUtil().setHeight(22)),
                            child: type[index] == "1"
                                ? Text(
                                    "支付宝",
                                    style: TextStyle(
                                      fontSize: ScreenUtil().setSp(30),
                                      color: Color.fromRGBO(92, 92, 92, 1),
                                    ),
                                  )
                                : type[index] == "2"
                                    ? Text("银行卡")
                                    : Text("微信支付"),
                          )),
                          Expanded(
                              child: Container(
                            alignment: Alignment.centerRight,
                            child: CupertinoSwitch(
                              activeColor: Color.fromRGBO(31, 120, 228, 1),
                              value: _switchItemA[index],
                              onChanged: (e) {
                                setState(() {
                                  _switchItemA[index] = e;
                                  print(e);
                                });
                              },
                            ),
                          ))
                        ],
                      )),
                  Container(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    margin: EdgeInsets.only(
                      bottom: ScreenUtil().setHeight(16),
                    ),
                    padding: EdgeInsets.fromLTRB(
                        ScreenUtil().setWidth(36),
                        ScreenUtil().setHeight(31),
                        ScreenUtil().setWidth(40),
                        ScreenUtil().setHeight(26)),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin:
                              EdgeInsets.only(right: ScreenUtil().setWidth(10)),
                          child: Text(
                            name[index],
                            style: TextStyle(
                              color: Color.fromRGBO(145, 145, 145, 1),
                              fontSize: ScreenUtil().setSp(30),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Text(
                          tel[index],
                          style: TextStyle(
                            color: Color.fromRGBO(92, 92, 92, 1),
                            fontSize: ScreenUtil().setSp(30),
                          ),
                        )),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "修改",
                              style: TextStyle(
                                color: Color.fromRGBO(31, 120, 228, 1),
                                fontSize: ScreenUtil().setSp(24),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          onTap: () {
                            print("修改");
                          },
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
            color: Color.fromRGBO(31, 120, 228, 1),
            width: double.infinity,
            margin: EdgeInsets.only(
                top: ScreenUtil().setHeight(55),
                left: ScreenUtil().setWidth(55),
                right: ScreenUtil().setWidth(55)),
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(2),
                bottom: ScreenUtil().setHeight(2)),
            child: RaisedButton(
                elevation: 0,
                child: Text(
                  "添加",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                color: Color.fromRGBO(31, 120, 228, 1),
                onPressed: () {
                  print("支付方式");
                  showModalBottomSheet(
                      context: context, builder: (builder) => BottomSheet());
                })),
      ],
    );
  }
}

//底部弹出选项卡
class BottomSheet extends StatefulWidget {
  @override
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        GestureDetector(
          child: Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            width: double.infinity,
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(40),
                bottom: ScreenUtil().setHeight(40)),
            child: Text(
              "银行卡",
              style: TextStyle(
                fontSize: ScreenUtil().setSp(30),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BindBank()));
            print("银行卡");
          },
        ),
        Container(
          color: Color.fromRGBO(216, 216, 216, 1),
          height: 1,
        ),
        GestureDetector(
          child: Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            width: double.infinity,
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(40),
                bottom: ScreenUtil().setHeight(40)),
            child: Text(
              "支付宝",
              style: TextStyle(
                fontSize: ScreenUtil().setSp(30),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          onTap: () {
            Navigator.of(context).pop();
           Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
  return BindOther(
    tabbarTitle:'支付宝',
  );
}));
            print("支付宝");
          },
        ),
        Container(
          color: Color.fromRGBO(216, 216, 216, 1),
          height: 1,
        ),
        GestureDetector(
          child: Container(
            width: double.infinity,
            color: Color.fromRGBO(255, 255, 255, 1),
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(40),
                bottom: ScreenUtil().setHeight(40)),
            child: Text(
              "微信支付",
              style: TextStyle(
                fontSize: ScreenUtil().setSp(30),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
  return BindOther(
    tabbarTitle:'微信',
   
  );
}));

            print("微信支付");
          },
        ),
      ],
    );
  }
}