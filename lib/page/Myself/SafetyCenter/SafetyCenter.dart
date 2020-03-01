import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/page/Myself/SafetyCenter/ChangeLoginPassword/ChangeLoginPassword.dart';
import 'package:tokpay/page/Myself/SafetyCenter/ChangeTel/ChangeOther.dart';
import 'package:tokpay/page/Myself/SafetyCenter/ChangeTransactionPassword/ChangeTransactionPassword.dart';

class SafetyCenter extends StatefulWidget {
  @override
  _SafetyCenterState createState() => _SafetyCenterState();
}

class _SafetyCenterState extends State<SafetyCenter> {
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
        elevation: 1,
        title: Text(
          "安全中心",
          style: TextStyle(
            color: Color.fromRGBO(92, 92, 92, 1),
            fontSize: ScreenUtil().setSp(32),
          ),
        ),
      ),
      body: SafetyCenterView(),
    );
  }
}

class SafetyCenterView extends StatefulWidget {
  @override
  _SafetyCenterViewState createState() => _SafetyCenterViewState();
}

class _SafetyCenterViewState extends State<SafetyCenterView> {
  String number = "188****2222";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: GestureDetector(
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: ScreenUtil().setWidth(1),
                                  color: Color.fromRGBO(224, 224, 224, 1)))),
                      padding: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(36),
                          ScreenUtil().setHeight(36),
                          ScreenUtil().setWidth(36),
                          ScreenUtil().setHeight(36)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "登录密码",
                            style: TextStyle(
                                color: Color.fromRGBO(92, 92, 92, 1),
                                fontSize: ScreenUtil().setSp(28),
                                fontWeight: FontWeight.w600),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "修改",
                                style: TextStyle(
                                  color: Color.fromRGBO(88, 154, 234, 1),
                                  fontSize: ScreenUtil().setSp(24),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(left: ScreenUtil().setWidth(6)),
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              "Images/Currency/YouJianTou/Rectangle.png",
                              width: ScreenUtil().setWidth(23),
                              height: ScreenUtil().setHeight(23),
                            ),
                          )
                        ],
                      )),
                  onTap: () {
                    print("修改");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeLoginPassword()));
                  },
                )),
            Expanded(
                flex: 1,
                child: GestureDetector(
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: ScreenUtil().setWidth(1),
                                  color: Color.fromRGBO(224, 224, 224, 1)))),
                      padding: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(36),
                          ScreenUtil().setHeight(36),
                          ScreenUtil().setWidth(36),
                          ScreenUtil().setHeight(36)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "交易密码",
                            style: TextStyle(
                                color: Color.fromRGBO(92, 92, 92, 1),
                                fontSize: ScreenUtil().setSp(28),
                                fontWeight: FontWeight.w600),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "修改",
                                style: TextStyle(
                                  color: Color.fromRGBO(88, 154, 234, 1),
                                  fontSize: ScreenUtil().setSp(24),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(left: ScreenUtil().setWidth(6)),
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              "Images/Currency/YouJianTou/Rectangle.png",
                              width: ScreenUtil().setWidth(23),
                              height: ScreenUtil().setHeight(23),
                            ),
                          )
                        ],
                      )),
                  onTap: () {
                    print("修改");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeTransactionPassword(
                      password:2,//此处返回bool （1为新建，2为修改）
                    )));
                  },
                )),
            Expanded(
                flex: 1,
                child: GestureDetector(
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: ScreenUtil().setWidth(1),
                                  color: Color.fromRGBO(224, 224, 224, 1)))),
                      padding: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(36),
                          ScreenUtil().setHeight(36),
                          ScreenUtil().setWidth(36),
                          ScreenUtil().setHeight(36)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "手机绑定",
                            style: TextStyle(
                                color: Color.fromRGBO(92, 92, 92, 1),
                                fontSize: ScreenUtil().setSp(28),
                                fontWeight: FontWeight.w600),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "${number}",
                                style: TextStyle(
                                  color: Color.fromRGBO(175, 175, 175, 1),
                                  fontSize: ScreenUtil().setSp(26),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(left: ScreenUtil().setWidth(6)),
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              "Images/Currency/YouJianTou/Rectangle.png",
                              width: ScreenUtil().setWidth(23),
                              height: ScreenUtil().setHeight(23),
                            ),
                          )
                        ],
                      )),
                  onTap: () {
                    print("手机绑定");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeOther(
                      tabbarTitle:'修改手机号码',
                      former: '原手机号码',
                      nowTitle:'新手机号码',
                      hintText: '请输入手机号码',
                      verification:'验证码',
                      verificationHintText:'请输入验证码'
                    )));
                  },
                )),
            Expanded(
                flex: 1,
                child: GestureDetector(
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: ScreenUtil().setWidth(1),
                                  color: Color.fromRGBO(224, 224, 224, 1)))),
                      padding: EdgeInsets.fromLTRB(
                          ScreenUtil().setWidth(36),
                          ScreenUtil().setHeight(36),
                          ScreenUtil().setWidth(36),
                          ScreenUtil().setHeight(36)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "邮箱绑定",
                            style: TextStyle(
                                color: Color.fromRGBO(92, 92, 92, 1),
                                fontSize: ScreenUtil().setSp(28),
                                fontWeight: FontWeight.w600),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "去绑定",
                                style: TextStyle(
                                    color: Color.fromRGBO(31, 120, 228, 1),
                                    fontSize: ScreenUtil().setSp(26),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(left: ScreenUtil().setWidth(6)),
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              "Images/Currency/YouJianTou/Rectangle.png",
                              width: ScreenUtil().setWidth(23),
                              height: ScreenUtil().setHeight(23),
                            ),
                          )
                        ],
                      )),
                  onTap: () {
                    print("邮箱绑定");
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeOther(
                      tabbarTitle:'修改邮箱账号',
                      former: '原邮箱地址',
                      nowTitle:'新邮箱地址',
                      hintText: '请输入邮箱地址',
                      verification:'邮箱验证',
                      verificationHintText:'请输入邮箱验证码'
                    )));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
