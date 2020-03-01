import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/page/Order/tabbars/lib/extends.dart';

class Assets extends StatefulWidget {
  @override
  _AssetsState createState() => _AssetsState();
}

class _AssetsState extends State<Assets> with TickerProviderStateMixin{
   TabController tabController;
  @override
   void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
  bool a=true;
  @override
  var assets=109423.434;//总资产
  var RMB=12839.241;
  var keYongYuE=128.249;//可用余额
  var dongJieZiChan=128.249;//冻结资产
  var leiJiShouYi=128.249;//累计收益
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
      Column(
        children: <Widget>[

          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: ScreenUtil().setHeight(85),bottom: ScreenUtil().setHeight(32)),
            decoration: BoxDecoration(
              image:DecorationImage(image:AssetImage("Images/Assets/background/BG.png"),fit: BoxFit.cover)
            ),
            child:Column(children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(8)),
                child: Text("总资产",style: TextStyle(
              color: Color.fromRGBO(190, 200, 231, 1.0),
              fontSize: ScreenUtil().setSp(32),
              fontWeight: FontWeight.w600
            ),),
              ),
              Text("${assets}",style: TextStyle(
                color: Colors.white,
                fontSize: ScreenUtil().setSp(48),
              ),),
              Text("≈￥${RMB}",style: TextStyle(
                color: Color.fromRGBO(190, 200, 231, 1.0),
                fontSize: ScreenUtil().setSp(32),
              ),),
          Row(
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
                          "可用余额",
                          style: TextStyle(
                              color: Color.fromRGBO(190, 200, 231, 1.0),
                              fontSize: ScreenUtil().setSp(26),
                              
                              ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                          child: 
                        
                        Text(
                          "${keYongYuE}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(32),
                              ),
                        )
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
                          "冻结资产",
                          style: TextStyle(
                              color: Color.fromRGBO(190, 200, 231, 1.0),
                              fontSize: ScreenUtil().setSp(26)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                          child:
                        Text(
                          "${dongJieZiChan}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(32)),
                        ))
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
                          "累计收益",
                          style: TextStyle(
                             color: Color.fromRGBO(190, 200, 231, 1.0),
                              fontSize: ScreenUtil().setSp(26)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                            child: Text("${leiJiShouYi}",style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(32)
                            ),))
                      ],
                    ),
                  )),
            ],
          ),
        Container(
          margin: EdgeInsets.only(left: ScreenUtil().setWidth(36),right: ScreenUtil().setWidth(36)),
          child:
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(21),bottom: ScreenUtil().setHeight(21)),
                  margin: EdgeInsets.only(right: ScreenUtil().setWidth(27)),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("Images/Assets/Icons/chaege/one.png",width: ScreenUtil().setWidth(36),height: ScreenUtil().setHeight(31),),
                      Container(
                        padding: EdgeInsets.only(left: ScreenUtil().setWidth(12)),
                        child: Text("充值",style: TextStyle(
                          color: Color.fromRGBO(0, 100, 255, 1),
                          fontSize: ScreenUtil().setSp(28),
                        ),),
                      )
                    ],
                  ),
                ),
              ),
            ),
              Expanded(
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(21),bottom: ScreenUtil().setHeight(21)),
                  margin: EdgeInsets.only(left: ScreenUtil().setWidth(13),right: ScreenUtil().setWidth(13)),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("Images/Assets/Icons/chaege/one.png",width: ScreenUtil().setWidth(36),height: ScreenUtil().setHeight(31),),
                      Container(
                        padding: EdgeInsets.only(left: ScreenUtil().setWidth(12)),
                        child: Text("转账",style: TextStyle(
                          color: Color.fromRGBO(0, 100, 255, 1),
                          fontSize: ScreenUtil().setSp(28),
                        ),),
                      )
                    ],
                  ),
                ),
              ),
            ),
              Expanded(
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(21),bottom: ScreenUtil().setHeight(21)),
                  margin: EdgeInsets.only(left: ScreenUtil().setWidth(27),),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("Images/Assets/Icons/cash/cash.png",width: ScreenUtil().setWidth(36),height: ScreenUtil().setHeight(31),),
                      Container(
                        padding: EdgeInsets.only(left: ScreenUtil().setWidth(12)),
                        child: Text("提现",style: TextStyle(
                          color: Color.fromRGBO(0, 100, 255, 1),
                          fontSize: ScreenUtil().setSp(28),
                        ),),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
            )],)
                
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: ScreenUtil().setWidth(1),color: Color.fromRGBO(238, 238, 238, 1)),)
            ),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: ScreenUtil().setHeight(24),bottom: ScreenUtil().setHeight(24),
            left: ScreenUtil().setWidth(36)),
            child: Text("收支明细",style: TextStyle(
              color: Color.fromRGBO(72, 87, 110, 1),
              fontSize: ScreenUtil().setSp(28),
              fontWeight: FontWeight.w600
            ),),
          ),
  
        TabBar( 
          labelColor:Color.fromRGBO(1, 100, 254, 1),
          unselectedLabelColor: Color.fromRGBO(51, 51, 51, 1),
          indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(child: 
              Text("全部",style: TextStyle(
                
                fontSize: ScreenUtil().setSp(28),
              ),),),
              Tab(child: Text("出售",style: TextStyle(
                fontSize: ScreenUtil().setSp(28),
              ),),),
              Tab(child: Text("购买",style: TextStyle(
               
                fontSize: ScreenUtil().setSp(28),
              ),),),
              Tab(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text(a?"提币":"充币"),
                   PopupMenuButton(
                     child: Container(
                       padding: EdgeInsets.only(left: ScreenUtil().setWidth(10),top: ScreenUtil().setHeight(3),right: ScreenUtil().setWidth(5)),
                     child: Image.asset("Images/Assets/Icons/type/s.png",width: ScreenUtil().setWidth(30),height: ScreenUtil().setHeight(30),),
                   ),
                  onSelected: (bool e){
                    setState(() {
                    a = e;
                  print(a);
                });
                  }, 
                  itemBuilder: (BuildContext context)=><PopupMenuEntry<bool>>[
                   PopupMenuItem(child:
                   Container(
                     alignment: Alignment.center,
                    child:Text("提币",textAlign: TextAlign.center,style: TextStyle(
                     color: Color.fromRGBO(51, 51, 51, 1),
                     fontSize: ScreenUtil().setSp(28)
                   ),),),
                   value: true,
                   ),
                   PopupMenuItem(child: 
                    Container(
                     alignment: Alignment.center,
                  child: Text("充币",style: TextStyle(
                     color: Color.fromRGBO(51, 51, 51, 1),
                     fontSize: ScreenUtil().setSp(28)
                   ),),),
                   value: false,
                   ),
                  ]
                    
                   
                   )
                 ],
               ),
                    ),
            ],
            controller: tabController,
            ),
            Expanded(
              child: ExtendedTabBarView(
              children: <Widget>[
                         ListView(
                           
                         ),
                          Text("Tab01"),
                          Text("Tab02"),
                          PageD(type:a),
              ],
              controller: tabController,
            ))
       
        ],
      ),
    );
  }
}

class PageD extends StatefulWidget {
  final type;
  PageD({Key key,this.type}):super(key:key);
  @override
  _PageDState createState() => _PageDState();
}

class _PageDState extends State<PageD> {
  var goumai=12356.124;//购买
  var tibi=333;
  var chongbi=22222.222;
  var chushou=222;
  //*1 提币 *2充币
  List tibilist1=["111","111","111"];
  List timeD1=["11-11","11-11","11-11"];
  List timeH1=["11:11","11:1","11:11"];
  List yue1=["8989898989898","12333","11111111.022"];//余额
  List tibilist2=["222","222","222"];
  List timeD2=["22-22","22-22","22-22"];
  List timeH2=["22:21","22:22","22:22"];
  List yue2=["2222222222222","22222","22222222.022"];//余额
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Color.fromRGBO(244, 240, 240, 1),
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(26),right: ScreenUtil().setWidth(36),top: ScreenUtil().setHeight(12),bottom: ScreenUtil().setHeight(12)),
          child: Row(
            children: <Widget>[
                Text("本月",style: TextStyle(
                  color: Color.fromRGBO (121, 121, 121, 1),
                  fontSize: ScreenUtil().setSp(26)
                ),),
                Container(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(118)),
                  child:
                  Text(widget.type?"购买：${goumai}":"出售： ${chushou}",style: TextStyle(
                  color: Color.fromRGBO (121, 121, 121, 1),
                  fontSize: ScreenUtil().setSp(26)
                ),),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(widget.type?"提币：${tibi}":"充币： ${chongbi}",style: TextStyle(
                  color: Color.fromRGBO (121, 121, 121, 1),
                  fontSize: ScreenUtil().setSp(26)
                ),) ,
                  ),
                )
            ],
          ),
        ),
        Expanded(child: 
         ListView.builder(
           padding: EdgeInsets.all(0),
           shrinkWrap: true,
      itemCount: tibilist1.length,
      itemBuilder: (BuildContext context, int index)=>Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: ScreenUtil().setWidth(1),color: Color.fromRGBO(141, 150, 160, 1)))
        ),
        padding: EdgeInsets.only(top: ScreenUtil().setHeight(24),bottom: ScreenUtil().setHeight(24),left: ScreenUtil().setWidth(36),right: ScreenUtil().setWidth(36)),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(widget.type?"提币":"充币",style: TextStyle(
                  color: Color.fromRGBO(72, 87, 110, 1),
                  fontSize: ScreenUtil().setSp(28),
                ),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(right: ScreenUtil().setWidth(2)),
                  alignment: Alignment.centerRight,
                  child:widget.type?Text("-${tibilist1[index]}",style:TextStyle(
                    color: Color.fromRGBO(250, 51, 38, 1),
                    fontSize: ScreenUtil().setSp(28)
                  ) ,):Text("${tibilist2[index]}",style:TextStyle(
                    color: Color.fromRGBO(0, 100, 255, 1),
                    fontSize: ScreenUtil().setSp(28)
                  ) ,),
                ))
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: ScreenUtil().setHeight(24)),
              child: Row(
                children: <Widget>[
                Text(widget.type?"时间：${timeD1[index]}  ${timeH1[index]}":"时间：${timeD2[index]}  ${timeH2[index]}",style: TextStyle(
                  color: Color.fromRGBO(141, 150, 160, 1),
                  fontSize: ScreenUtil().setSp(28),
                ),
                ),
                Expanded(child: Container(
                  alignment: Alignment.centerRight,
                  child: Text(widget.type?"余额：${yue1[index]}":"余额：${yue2[index]}",style:TextStyle(
                    color: Color.fromRGBO(72, 87, 110, 1),
                    fontSize: ScreenUtil().setSp(28)
                  ) ,),
                ))
              ],
              ),
            )
          ],
        ),

      ),
      
    )
        )

      ],
    );
    
   
  }
}