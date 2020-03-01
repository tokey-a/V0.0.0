import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BindBank extends StatefulWidget {
  @override
  _BindBankState createState() => _BindBankState();
}

class _BindBankState extends State<BindBank> {
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
            "绑定银行卡",
            style: TextStyle(
              color: Color.fromRGBO(92, 92, 92, 1),
              fontSize: ScreenUtil().setSp(32),
            ),
          ),
      ),
      body: ListView(
        children: <Widget>[
           BindBankView(),
        ],
      )
     
    );
  }
}

class BindBankView extends StatefulWidget {
  @override
  _BindBankViewState createState() => _BindBankViewState();
}

class _BindBankViewState extends State<BindBankView> {
  String bindBankType="请选择开户银行";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        ScreenUtil().setWidth(55),
        ScreenUtil().setHeight(38),
        ScreenUtil().setWidth(55),
        ScreenUtil().setHeight(0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("姓名",style: TextStyle(
            color: Color.fromRGBO(114, 115, 125, 1),
            fontSize: ScreenUtil().setSp(28),
            fontWeight: FontWeight.w600
          ),),
          Container(
          margin: EdgeInsets.only(top: ScreenUtil().setHeight(10),bottom: ScreenUtil().setHeight(60)),
          child:TextField(
            cursorColor: Colors.black,
            style: TextStyle(
              color: Colors.black,
              fontSize: ScreenUtil().setSp(36)
            ),
            decoration: InputDecoration(
                      isDense: true,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(31, 120, 228, 1),
                        width: 2,
                      )),
            ),
            onSubmitted: (text){
              print(text);
            },
            ),
          ),
          Text("银行卡号",style: TextStyle(
            color: Color.fromRGBO(114, 115, 125, 1),
            fontSize: ScreenUtil().setSp(28),
            fontWeight: FontWeight.w600
          ),), 
             Container(
          margin: EdgeInsets.only(top: ScreenUtil().setHeight(10),bottom: ScreenUtil().setHeight(60)),
          child:TextField(
            enableInteractiveSelection:false,
            keyboardType: TextInputType.number,
            cursorColor: Colors.black,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(36)
            ),
            decoration: InputDecoration(
                      isDense: true,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(31, 120, 228, 1),
                        width: 2,
                      )),
            ),
            onSubmitted: (text){
              print(text);
            },
            ),
          ),
          Text("开户银行",style: TextStyle(
            color: Color.fromRGBO(114, 115, 125, 1),
            fontSize: ScreenUtil().setSp(28),
            fontWeight: FontWeight.w600
          ),),
          Container(
          margin: EdgeInsets.only(top: ScreenUtil().setHeight(19),bottom: ScreenUtil().setHeight(0)),
          child:Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child: Text(bindBankType,style: TextStyle(
                      color: Color.fromRGBO(166, 177, 193, 1),
                      fontSize: ScreenUtil().setSp(26),
                    ),),
                  ),
                  Expanded(child: 
                  GestureDetector(
                    onTap: (){
                      print("请选择银行卡类型");
                    },
                  child:Container(
                    alignment: Alignment.bottomRight,
                    child: Text("请选择",style: TextStyle(
                      color: Color.fromRGBO(166, 177, 193, 1),
                      fontSize: ScreenUtil().setSp(26),
                    ),),
                  ))),
                 Container(
                   padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
                   child: Image.asset("Images/Currency/YouJianTou/Rectangle.png",width: ScreenUtil().setWidth(26),height: ScreenUtil().setHeight(25),),
                 ),
                 
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: ScreenUtil().setHeight(12),bottom: ScreenUtil().setHeight(60)),
                   height: 2,
                   color: Color.fromRGBO(229, 229, 229, 1),
                 )
            ],
          )
          ),
          Text("开户支行（选填）",style: TextStyle(
            color: Color.fromRGBO(114, 115, 125, 1),
            fontSize: ScreenUtil().setSp(28),
            fontWeight: FontWeight.w600
          ),), 
             Container(
          margin: EdgeInsets.only(top: ScreenUtil().setHeight(10),bottom: ScreenUtil().setHeight(60)),
          child:TextField(
            enableInteractiveSelection:false,
            keyboardType: TextInputType.number,
            cursorColor: Colors.black,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(36)
            ),
            decoration: InputDecoration(
                      isDense: true,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(31, 120, 228, 1),
                        width: 2,
                      )),
            ),
            onSubmitted: (text){
              print(text);
            },
            ),
          ),
           Container(
            color: Color.fromRGBO(31, 120, 228, 1),
            width: double.infinity,
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(2),
                bottom: ScreenUtil().setHeight(2)),
            child: RaisedButton(
                elevation: 0,
                child: Text(
                  "绑定",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                color: Color.fromRGBO(31, 120, 228, 1),
                onPressed: () {
                  print("绑定");
                  showDialog(
                      context: context, builder: (builder) => ShowDialog());
                })),
        ],
      ),
    );
  }
}
class ShowDialog extends StatefulWidget {
  @override
  _ShowDialogState createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

   child:
    AlertDialog(
     content: Container( 
       child: Text("资料正在审核中…",style: TextStyle(
         fontSize: ScreenUtil().setSp(28),
         color: Color.fromRGBO(114, 115, 125, 1)
       ),),
     ),
     contentPadding: EdgeInsets.only(left: ScreenUtil().setWidth(160),top: ScreenUtil().setHeight(56),bottom: ScreenUtil().setHeight(69)),
     title: Container(
       child: Row(children: <Widget>[
       Container(
         margin: EdgeInsets.only(left: ScreenUtil().setWidth(110),top: ScreenUtil().setHeight(12),right: ScreenUtil().setWidth(21)),
         child: Image.asset("Images/PaymentMethod/BindBank/success.png",width: ScreenUtil().setWidth(40),height: ScreenUtil().setHeight(40),),
       ),
       Text("提交成功 !",style: TextStyle(
         fontSize: ScreenUtil().setSp(34),
         fontWeight: FontWeight.w600
       ),)
     ],),),
    ),
     onTap: (){
       print("object");
       Navigator.of(context).pop();
     },
    );
  }
}