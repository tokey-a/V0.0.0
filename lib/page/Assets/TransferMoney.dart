import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransferMoney extends StatefulWidget {
  @override
  _TransferMoneyState createState() => _TransferMoneyState();
}

class _TransferMoneyState extends State<TransferMoney> {
  String balance = "29.231"; //余额
  @override
  Widget build(BuildContext context) {
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
          // elevation: 0,
          title: Text(
            "转账",
            style: TextStyle(
              color: Color.fromRGBO(92, 92, 92, 1),
              fontSize: ScreenUtil().setSp(32),
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(55),
                      right: ScreenUtil().setWidth(55)),
                  child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin:
                              EdgeInsets.only(top: ScreenUtil().setHeight(50)),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "转出USDT",
                            style: TextStyle(
                                color: Color.fromRGBO(153, 155, 172, 1),
                                fontSize: ScreenUtil().setSp(36),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(
                              top: ScreenUtil().setHeight(54),
                              bottom: ScreenUtil().setHeight(10)),
                          child: Text(
                            "提币地址",
                            style: TextStyle(
                                color: Color.fromRGBO(66, 69, 98, 1),
                                fontSize: ScreenUtil().setSp(28),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextField(
                          cursorColor: Colors.black,
                          // keyboardType: TextInputType.number,
                          // maxLength: 6,
                          style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                          decoration: InputDecoration(
                            
                            suffixIcon:
                            GestureDetector(
                            child:Container(
                              child: Icon(
                              IconData(0xe649, fontFamily: 'scan'),
                              color: Colors.black,
                              size: 30,
                            ),),
                            onTap: (){
                              print("object");
                               FocusScope.of(context).requestFocus(FocusNode());
                            },
                            ),
                            hintText: '请输入提现金额',
                            isDense: true,
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(31, 120, 228, 1),
                              width: 2,
                            )),
                          ),
                          onSubmitted: (text) {
                            print(text);
                          },
                        ),
                        Container(
                          margin: EdgeInsets.only(top:ScreenUtil().setHeight(15)),
                          alignment: Alignment.topLeft,
                          child: Text("转账前请务必确认地址及币种无误！以免造成损失。",style: TextStyle(
                            color: Color.fromRGBO(183, 183, 183, 1),
                            fontSize: ScreenUtil().setSp(24)
                          ),),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(
                              top: ScreenUtil().setHeight(68),
                              bottom: ScreenUtil().setHeight(10)),
                          child: Text(
                            "转账数量",
                            style: TextStyle(
                                color: Color.fromRGBO(66, 69, 98, 1),
                                fontSize: ScreenUtil().setSp(28),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextField(
                          cursorColor: Colors.black,
                          style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                          decoration: InputDecoration(
                            suffixIcon: Container(
                              padding: EdgeInsets.only(
                                  left: ScreenUtil().setWidth(33)),
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    width: ScreenUtil().setWidth(2),
                                    color: Colors.red),
                              )),
                              child: Text(
                                "全部",
                                style: TextStyle(
                                    color: Color.fromRGBO(31, 120, 228, 1),
                                    fontSize: ScreenUtil().setSp(26),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            hintText: "请输入转出USDT数量",
                            isDense: true,
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(31, 120, 228, 1),
                              width: 2,
                            )),
                          ),
                          onSubmitted: (text) {
                            print(text);
                          },
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                        top: ScreenUtil().setHeight(18)),
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "可用余额：",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(114, 115, 125, 1),
                                          fontSize: ScreenUtil().setSp(24),
                                          fontWeight: FontWeight.bold),
                                    ))),
                            Container(
                              margin: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(18)),
                              child: Text(
                                balance,
                                style: TextStyle(
                                    color: Color.fromRGBO(31, 120, 228, 1),
                                    fontSize: ScreenUtil().setSp(24),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(18),
                                  left: ScreenUtil().setWidth(5)),
                              child: Text(
                                "USDT",
                                style: TextStyle(
                                    color: Color.fromRGBO(114, 115, 125, 1),
                                    fontSize: ScreenUtil().setSp(24),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: ScreenUtil().setHeight(73)),
                            width: double.infinity,
                            child: RaisedButton(
                                padding: EdgeInsets.only(
                                    top: ScreenUtil().setHeight(30),
                                    bottom: ScreenUtil().setHeight(30)),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                // elevation: 0,
                                child: Text(
                                  "提币",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                                color: Color.fromRGBO(31, 120, 228, 1),
                                onPressed: () {
                                  print("提币");
                                })),
                      ]))
            ],
          ),
        ));
  }
}
