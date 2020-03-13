import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/page/Order/Activation.dart';
import 'package:tokpay/page/Order/Updata.dart';

class OrderCard extends StatefulWidget {
  final List type;//页面类型1 购买 2 出售 订单数量长度
  final int pages;//页面编号
  final List orderState;//订单状态 1：请付款 2：请放行 3：已完成
  final List paytype=[true,true,false];//pageA 底部内容 true 我已付款 false 确认放行
  final List  pageABottomType=[true,false,false];//进行中页面底部状态 true：申诉 false:付款与放行 (true时paytype状态不可用)
  OrderCard({Key key, this.type, this.pages,this.orderState});
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(0)),
      children: <Widget>[
    ListView.builder(
       physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(24)),
          itemCount: widget.type.length,
          itemBuilder: (BuildContext context, int index) => Container(
             margin: EdgeInsets.only(
               bottom: ScreenUtil().setHeight(14),
          left: ScreenUtil().setWidth(32), right: ScreenUtil().setWidth(32),top: ScreenUtil().setHeight(0)),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 246, 255, 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[400],
                      offset: Offset(0.0, 10.0),
                      blurRadius: 20.0,
                      spreadRadius: 7.0)
                ]),
                child: Column(
                  children: <Widget>[
                    Container( 
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))
                    ),
                    child:
                    Row(
                      children: <Widget>[
                        Container(
                          
                          margin: EdgeInsets.only(
                              left: ScreenUtil().setWidth(36),
                              top: ScreenUtil().setHeight(19),
                              bottom: ScreenUtil().setHeight(14)),
                          padding: EdgeInsets.fromLTRB(
                              ScreenUtil().setWidth(37),
                              ScreenUtil().setHeight(10),
                              ScreenUtil().setWidth(37),
                              ScreenUtil().setHeight(10)),
                          decoration: BoxDecoration(
                           
                              gradient: widget.type[index] == "1"
                                  ? LinearGradient(
                                      colors: [
                                          Color.fromRGBO(2, 157, 255, 1),
                                          Color.fromRGBO(1, 100, 254, 1)
                                        ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight)
                                  : LinearGradient(
                                      colors: [
                                          Color.fromRGBO(245, 102, 93, 1),
                                          Color.fromRGBO(240, 70, 70, 1)
                                        ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                              boxShadow: [
                                BoxShadow(
                                    color: widget.type[index] == "1"
                                        ? Color.fromRGBO(1, 100, 254, 0.5)
                                        : Color.fromRGBO(254, 53, 1, 0.5),
                                    offset: Offset(0.0, 3.0),
                                    blurRadius: 15,
                                    spreadRadius: 0)
                              ]),
                          child: Text(
                            widget.type[index] == "1" ? "购买" : "出售",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(28),
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                          child: Text(
                           widget.orderState[index]=="1"? "请付款":widget.orderState[index] == "2" ?"请放行":widget.orderState[index]=="3"?"已完成":"已取消",
                            style: TextStyle(
                                color:widget.orderState[index] == "3" ? Color.fromRGBO(1, 108, 254, 1): Color.fromRGBO(250, 100, 0, 1),
                                fontSize: ScreenUtil().setSp(28)),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          padding:
                              EdgeInsets.only(right: ScreenUtil().setWidth(36)),
                          alignment: Alignment.centerRight,
                          child: Text(
                            "时间：2019-12-30 11:09:55",
                            style: TextStyle(
                                color: Color.fromRGBO(141, 150, 160, 1),
                                fontSize: ScreenUtil().setSp(26)),
                          ),
                        ))
                      ],
                    ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: ScreenUtil().setHeight(24),bottom: ScreenUtil().setHeight(34)),
                      // color: Color.fromRGBO(241, 246, 255, 1),
                      child: Row(
                        // mainAxisAlignment:MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                              flex: 4,
                              child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              width: 1,
                                              color: Color.fromRGBO(
                                                  216, 216, 216, 1)))),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "46",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(72, 87, 110, 1),
                                            fontSize: ScreenUtil().setSp(32)),
                                      ),
                                      Text(
                                        "金额(CNY)",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                216, 216, 216, 1),
                                            fontSize: ScreenUtil().setSp(26)),
                                      )
                                    ],
                                  ))),
                          Expanded(
                              flex: 5,
                              child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              width: 1,
                                              color: Color.fromRGBO(
                                                  216, 216, 216, 1)))),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "46",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(72, 87, 110, 1),
                                            fontSize: ScreenUtil().setSp(32)),
                                      ),
                                      Text(
                                        "金额(CNY)",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                216, 216, 216, 1),
                                            fontSize: ScreenUtil().setSp(26)),
                                      )
                                    ],
                                  ))),
                          Expanded(
                              flex: 4,
                              child: Container(
                                  child: Column(
                                children: <Widget>[
                                  Text(
                                    "46",
                                    style: TextStyle(
                                        color: Color.fromRGBO(72, 87, 110, 1),
                                        fontSize: ScreenUtil().setSp(32)),
                                  ),
                                  Text(
                                    "金额(CNY)",
                                    style: TextStyle(
                                        color: Color.fromRGBO(216, 216, 216, 1),
                                        fontSize: ScreenUtil().setSp(26)),
                                  )
                                ],
                              ))),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: ScreenUtil().setWidth(36),right: ScreenUtil().setWidth(36)),
                      // color: Color.fromRGBO(241, 246, 255, 1),
                      child:Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(11)),
                            decoration: BoxDecoration(
                        border: Border(bottom:BorderSide( width: 1,color: Colors.grey[300]))
                      ),
                            child:
                         Row(
                        children: <Widget>[
                          Text("收款人：",style: TextStyle(
                            color: Color.fromRGBO(141, 150, 160, 1),
                            fontSize: ScreenUtil().setSp(28)
                          ),),
                          Expanded(child: Text("小王",textAlign: TextAlign.right,style: TextStyle(
                            color: Color.fromRGBO(72, 87, 110, 1),
                            fontSize: ScreenUtil().setSp(28),
                          ),)),
                          Container(
                            padding: EdgeInsets.only(left: ScreenUtil().setWidth(15)),
                            child: Image.asset("Images/Order/Copy/copy.png",width: ScreenUtil().setWidth(36),height:ScreenUtil().setHeight(36),),
                          )
                        ],
                      ),
                          ),
                           Container(
                            padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(11),top: ScreenUtil().setHeight(20)),
                            decoration: BoxDecoration(
                        border: Border(bottom:BorderSide( width: 1,color: Colors.grey[300]))
                      ),
                            child:
                         Row(
                        children: <Widget>[
                          Text("账号：",style: TextStyle(
                            color: Color.fromRGBO(141, 150, 160, 1),
                            fontSize: ScreenUtil().setSp(28)
                          ),),
                          Expanded(child: Text("小王",textAlign: TextAlign.right,style: TextStyle(
                            color: Color.fromRGBO(72, 87, 110, 1),
                            fontSize: ScreenUtil().setSp(28),
                          ),)),
                          Container(
                            padding: EdgeInsets.only(left: ScreenUtil().setWidth(15)),
                            child: Image.asset("Images/Order/Copy/copy.png",width: ScreenUtil().setWidth(36),height:ScreenUtil().setHeight(36),),
                          )
                        ],
                      ),
                          ),
                           Container(
                            padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(11),top: ScreenUtil().setHeight(20)),
                            decoration: BoxDecoration(
                        border: Border(bottom:BorderSide( width: 1,color: Colors.grey[300]))
                      ),
                            child:
                         Row(
                        children: <Widget>[
                          Text("支行：",style: TextStyle(
                            color: Color.fromRGBO(141, 150, 160, 1),
                            fontSize: ScreenUtil().setSp(28)
                          ),),
                          Expanded(child: Text("小王",textAlign: TextAlign.right,style: TextStyle(
                            color: Color.fromRGBO(72, 87, 110, 1),
                            fontSize: ScreenUtil().setSp(28),
                          ),)),
                          Container(
                            padding: EdgeInsets.only(left: ScreenUtil().setWidth(15)),
                            child: Image.asset("Images/Order/Copy/copy.png",width: ScreenUtil().setWidth(36),height:ScreenUtil().setHeight(36),),
                          )
                        ],
                      ),
                          ),
                           Container(
                            padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(11),top: ScreenUtil().setHeight(20)),
                           
                            child:
                         Row(
                        children: <Widget>[
                          Text("订单号：",style: TextStyle(
                            color: Color.fromRGBO(141, 150, 160, 1),
                            fontSize: ScreenUtil().setSp(28)
                          ),),
                          Expanded(child: Text("小王",textAlign: TextAlign.right,style: TextStyle(
                            color: Color.fromRGBO(72, 87, 110, 1),
                            fontSize: ScreenUtil().setSp(28),
                          ),)),
                          Container(
                            padding: EdgeInsets.only(left: ScreenUtil().setWidth(15)),
                            child: Image.asset("Images/Order/Copy/copy.png",width: ScreenUtil().setWidth(36),height:ScreenUtil().setHeight(36),),
                          )
                        ],
                      ),
                          ),
                        ])
                    ),
                    Container(
                      width: double.infinity,
                      child: bottom(widget.pages,widget.pageABottomType[index],widget.paytype[index]),
                    )
                  ],
                ),
              )),
   Container(
    alignment: Alignment.center,
    padding: EdgeInsets.only(top: ScreenUtil().setHeight(100),bottom: ScreenUtil().setHeight(50)),
     child:Text("-暂无更多订单记录-",style: TextStyle(
       color: Color.fromRGBO(192, 197, 203, 1),
       fontSize: ScreenUtil().setSp(28)
     ),)
   )
   
    ],
    );
    }
  // @override
  Widget bottom(pages,pagetype,paytype) {
    switch (pages) {
      case 1:
        return PageA(
          PageAType:pagetype,
          paytype: paytype,
        );
        break;
      case 2:
        return PageB();
        break;
      case 3:
        return PageB();
        break;
        case 4:
        return PageD();
        break;

      default:
        return Container();
    }
  }
}
//进行中页面
class PageA extends StatefulWidget {
  final PageAType;
  final  paytype;
  PageA({Key key,this.PageAType,this.paytype});
  @override
  _PageAState createState() => _PageAState();
}
class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 1,color: Colors.grey[300]))
      ),
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(25),
        bottom: ScreenUtil().setHeight(25),
        left: ScreenUtil().setWidth(36),right: ScreenUtil().setWidth(36)),
      
      child: widget.PageAType?pageABottomT():pageABottomF(widget.paytype)
    );
  }
Widget pageABottomF(paytype){
  return Column(
  children: <Widget>[
   paytype? Container(
     padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(104), ScreenUtil().setHeight(10), ScreenUtil().setWidth(104), ScreenUtil().setHeight(10)),
      color: Color.fromRGBO(223, 235, 255, 1),
      child: Text("我已付款",style: TextStyle(
        color: Color.fromRGBO(1, 100, 254, 1),
        fontSize: ScreenUtil().setSp(28),
      ),),
    ):Container(
      padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(104), ScreenUtil().setHeight(10), ScreenUtil().setWidth(104), ScreenUtil().setHeight(10)),
       decoration: BoxDecoration(
                              gradient:LinearGradient(
                                      colors: [
                                          Color.fromRGBO(245, 102, 93, 1),
                                          Color.fromRGBO(240, 70, 70, 1)
                                        ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                              boxShadow: [
                                BoxShadow(
                                    color:  Color.fromRGBO(254, 53, 1, 0.5),
                                    offset: Offset(0.0, 3.0),
                                    blurRadius: 15,
                                    spreadRadius: 0)
                              ]),
      child: Text("确认放行",style: TextStyle(
        color: Colors.white,
        fontSize: ScreenUtil().setSp(28)
      ),),
    )
  ],
  );
}

  Widget pageABottomT(){
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>Activation(titleBar: "申诉",)));
          },
          child:
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(223, 235, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(4))
          ),
          padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(32), ScreenUtil().setHeight(10), ScreenUtil().setWidth(32), ScreenUtil().setHeight(10)),
          child: Text("申诉",style: TextStyle(
            color: Color.fromRGBO(1, 100, 254, 1),
            fontSize: ScreenUtil().setSp(28)
          ),),
        )),
        Expanded(child:Container()),
        GestureDetector(child:
        Container(
          padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(49), ScreenUtil().setHeight(10), ScreenUtil().setWidth(49), ScreenUtil().setHeight(10)),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(1, 100, 254, 0.5),
                offset: Offset(0.0, 7.0),
                blurRadius: 10,
                spreadRadius: 0
              )
            ],
            gradient: LinearGradient(colors: [Color.fromRGBO(2, 157, 255, 1),Color.fromRGBO(1, 100, 254, 1)],begin: Alignment.centerLeft,end: Alignment.centerRight)
          ),
          child: Text("更新付款凭证",style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: ScreenUtil().setSp(28)
          ),),
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>Updata()));
        },
        )
      ],
    );
  }
}

//申诉中页面
class PageB extends StatefulWidget {
  @override
  _PageBState createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
          // color: Color.fromRGBO(241, 246, 255, 1),
    );
  }
}

//已取消页面

class PageD extends StatefulWidget {
  @override
  _PageDState createState() => _PageDState();
}

class _PageDState extends State<PageD> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 1,color: Colors.grey[300]))
      ),
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(25),bottom: ScreenUtil().setHeight(25)),
       
      child: 
    Column(
      children: <Widget>[
        GestureDetector(child:
        Container(
          padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(152), ScreenUtil().setHeight(15), ScreenUtil().setWidth(152), ScreenUtil().setHeight(15)),
       decoration: BoxDecoration(
                              gradient:LinearGradient(
                                      colors: [
                                          Color.fromRGBO(245, 102, 93, 1),
                                          Color.fromRGBO(240, 70, 70, 1)
                                        ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                              boxShadow: [
                                BoxShadow(
                                    color:  Color.fromRGBO(254, 53, 1, 0.5),
                                    offset: Offset(0.0, 7.0),
                                    blurRadius: 15,
                                    spreadRadius: 0)
                              ]),
      child: Text("激活",style: TextStyle(
        color: Colors.white,
        fontSize: ScreenUtil().setSp(28)
      ),), 
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>Activation(titleBar: "激活",)
          ));
        },
        )
      ],
    )
    );}
}

