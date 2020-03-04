import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeOther extends StatefulWidget {
  final next;//本页下一步修改
  final tabbarTitle;//顶部title
  final former;//原手机/邮箱号
  final nowTitle;//现手机/邮箱号
  final hintText;//输入框
  final verification;//验证码title
  final verificationHintText;//验证码输入框
  ChangeOther({Key key,this.next,this.tabbarTitle,this.former,this.nowTitle,this.hintText,this.verification,this.verificationHintText}):super(key:key);
  @override
  _ChangeOtherState createState() => _ChangeOtherState();
}

class _ChangeOtherState extends State<ChangeOther> {
  bool _switchItemA=true;
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
          "${widget.tabbarTitle}",
          style: TextStyle(
            color: Color.fromRGBO(92, 92, 92, 1),
            fontSize: ScreenUtil().setSp(32),
          ),
        ),
      ),
      
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(36),
                right: ScreenUtil().setWidth(36)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(58),bottom: ScreenUtil().setHeight(10)),
                  child: Text(
                    widget.next==1?"${widget.nowTitle}":"${widget.former}",
                    style: TextStyle(
                        color: Color.fromRGBO(114, 115, 125, 1),
                        fontSize: ScreenUtil().setSp(28),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  // maxLength: 6,
                  style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                  decoration: InputDecoration(
                    hintText: '${widget.hintText}',
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
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(58),bottom: ScreenUtil().setHeight(10)),
                  child: Text(
                    "${widget.verification}",
                    style: TextStyle(
                        color: Color.fromRGBO(114, 115, 125, 1),
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
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(23)),
                decoration: BoxDecoration(
                  border: Border(left: BorderSide(width: 1,color: Color.fromRGBO(196, 205, 218, 1)))
                ),
                child:
                GestureDetector(
                  onTap: (){
                    print("发送验证码");
                  },
                  child:
                Text("发送验证码",style: TextStyle(
                  color: Color.fromRGBO(31, 120, 228, 1),
                  fontSize: ScreenUtil().setSp(26)
                ),),)
              ),
               ),
                    hintText: '${widget.verificationHintText}',
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
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(68)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text("开启安全验证",style: TextStyle(
                          color: Color.fromRGBO(66, 69, 98, 1),
                          fontSize: ScreenUtil().setSp(30),
                        ),),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: CupertinoSwitch(
                              activeColor: Color.fromRGBO(31, 120, 228, 1),
                              value: _switchItemA,
                              onChanged: (e) {
                                setState(() {
                                  _switchItemA = e;
                                  print(e);
                                });
                              },
                            ),
                          )
                        )
                      
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(44)),
                  child: Text("开启安全验证后，您在登录、交易、修改收款方式时，需要进行手机或邮箱验证",style: TextStyle(
                    color: Color.fromRGBO(183, 183, 183, 1),
                    fontSize: ScreenUtil().setSp(24),
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(40)),
            color: Color.fromRGBO(31, 120, 228, 1),
            width: double.infinity,
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(2),
                bottom: ScreenUtil().setHeight(2)),
            child: RaisedButton(
                elevation: 0,
                child: Text(
                  widget.next==1?"确认修改":"下一步",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                color: Color.fromRGBO(31, 120, 228, 1),
                onPressed: () {
                  print("确认");
                  print(widget.next==1);
                  widget.next==1?print("修改"):Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeOther(
                    next: 1,
                    tabbarTitle: '${widget.tabbarTitle}',
                    nowTitle: '${widget.nowTitle}',
                    hintText: '${widget.hintText}',
                    verification: '${widget.verification}',
                    verificationHintText: '${widget.verificationHintText}',

                  )
                  )
                  );
                })),
              ],
            ),
          )
        ],
      ),
    
    );
  }
}