import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetMoney extends StatefulWidget {
  @override
  _GetMoneyState createState() => _GetMoneyState();
}

class _GetMoneyState extends State<GetMoney> {
  String  balance="29.231";//余额
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
        elevation: 2,
          title: Text(
            "提现",
            style: TextStyle(
              color: Color.fromRGBO(92, 92, 92, 1),
              fontSize: ScreenUtil().setSp(32),
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child:ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(55),right: ScreenUtil().setWidth(55)),
              child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(68),bottom: ScreenUtil().setHeight(10)),
                  child: Text(
                    "提现数量",
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
                    suffixIcon: GestureDetector(
                onTap: (){
                  print("object");
                   FocusScope.of(context).requestFocus(FocusNode());
                },

                child:
              Container(
                margin: EdgeInsets.only(top: ScreenUtil().setHeight(25),bottom: ScreenUtil().setHeight(15)),
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(33)),
                decoration: BoxDecoration(
                  border: Border(left: BorderSide(width: 1,color: Color.fromRGBO(196, 205, 218, 1)))
                ),
                child:
                GestureDetector(
                  onTap: (){
                    print("发送验证码");
                  },
                  child:
                Text("全部",style: TextStyle(
                  color: Color.fromRGBO(31, 120, 228, 1),
                  fontSize: ScreenUtil().setSp(26)
                ),),)
              ),
               ),
                    hintText: "请输入提现数量",
                    isDense: false,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(31, 120, 228, 1),
                      width: 2,
                    )),
                  ),
                  onSubmitted: (text) {
                    print(text);
                  },
                ),Row(children: <Widget>[
                  Expanded(child: Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(18)),
                    alignment: Alignment.centerRight,
                    child:Text("可用余额：",style: TextStyle(
                      color: Color.fromRGBO(114, 115, 125, 1),
                      fontSize: ScreenUtil().setSp(24),
                      fontWeight: FontWeight.bold
                    ),))),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(18)),
                  child: Text(balance,style: TextStyle(
                      color: Color.fromRGBO(31, 120, 228, 1),
                      fontSize: ScreenUtil().setSp(24),
                      fontWeight: FontWeight.bold
                    ),),
                ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(18),left: ScreenUtil().setWidth(5)),
                  child: Text("USDT",style: TextStyle(
                      color: Color.fromRGBO(114, 115, 125, 1),
                      fontSize: ScreenUtil().setSp(24),
                      fontWeight: FontWeight.bold
                    ),),
                ),
                ],),
                
                
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(61),bottom: ScreenUtil().setHeight(10)),
                  child: Text("提现金额",
                    style: TextStyle(
                         color: Color.fromRGBO(66, 69, 98, 1),
                        fontSize: ScreenUtil().setSp(28),
                        fontWeight: FontWeight.w600),
                  ),
                ),TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  // maxLength: 6,
                  style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                  decoration: InputDecoration(
                    hintText:'请输入提现金额',
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
                  margin: EdgeInsets.only(top:ScreenUtil().setHeight(87),bottom: ScreenUtil().setHeight(24)),
                  child: Text("提现申请提交后,系统将为您匹配卡商进行提现交易。",style: TextStyle(
                    color: Color.fromRGBO(183, 183, 183, 1),
                    fontSize: ScreenUtil().setSp(24),
                  ),),
                ),
                Container(
            width: double.infinity,
            child: RaisedButton(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(30),
                bottom: ScreenUtil().setHeight(30)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
                child: Text(
                  "提币",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                color: Color.fromRGBO(31, 120, 228, 1),
                onPressed: () {
                  print("支付方式");
                })),
                
              ]
              )
            )
          ],
        ),
        )
    );
  }
}