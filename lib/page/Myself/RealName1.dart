import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokpay/page/Myself/RealNameSuccess.dart';

class RealName1 extends StatefulWidget {
  @override
  _RealName1State createState() => _RealName1State();
}

class _RealName1State extends State<RealName1> {
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
          "实名认证",
          style: TextStyle(
            color: Color.fromRGBO(92, 92, 92, 1),
            fontSize: ScreenUtil().setSp(32),
          ),
        ),
       
      ),
      bottomNavigationBar: 
      GestureDetector(
     child: Container(
       color: Color.fromRGBO(212, 223, 233, 1),
       padding: EdgeInsets.only(top: ScreenUtil().setHeight(23),bottom: ScreenUtil().setHeight(21),),
        margin: EdgeInsets.only(left: ScreenUtil().setWidth(36),right: ScreenUtil().setWidth(36),bottom: ScreenUtil().setHeight(60)),
        child: Text("提交",textAlign: TextAlign.center,style: TextStyle(
          color: Colors.white,
          fontSize: ScreenUtil().setSp(28)
        ),),
      ),
      onTap: (){
        showDialog(context: context,
                             builder: (context) => SimpleDialog(

                               title: Center(child:Text("资料上传成功")),
                               children: <Widget>[
                                 Center(
                                   child: Container(
                                     margin: EdgeInsets.only(left: ScreenUtil().setWidth(32),right: ScreenUtil().setWidth(32)),
                                     child: Text("资料审核约需1-3个工作日，请耐心等待，如有疑问请联系客服",textAlign: TextAlign.center,style: TextStyle(
                                       color: Color.fromRGBO(102, 102, 102, 1),
                                       fontSize: ScreenUtil().setSp(28)
                                     ),),
                                   ),
                                 ),
                                 GestureDetector(
                                   child: Container(
                                    //  width: double.maxFinite,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(59)),
                                    decoration: BoxDecoration(
                                      border: Border(top: BorderSide(width: ScreenUtil().setWidth(1),color: Color.fromRGBO(221, 221, 221, 1)))
                                    ),
                                     padding: EdgeInsets.only(top: ScreenUtil().setHeight(24)),
                                     child: Text("确定",style: TextStyle(
                                       color: Color.fromRGBO(0, 100, 255, 1),
                                       fontSize: ScreenUtil().setSp(36)

                                     ),),
                                   ),
                                   onTap: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=>RealNameSuccess(
                                       result:false,
                                     ))
                                     );
                                   },
                                 )
                               ],
                             ));
      },
      ),
      body: 
      ListView(
        padding: EdgeInsets.all(0),
        // physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
        RealNameView(),
      ],)
      
    );
  }
}
class RealNameView extends StatefulWidget {
  @override
  _RealNameViewState createState() => _RealNameViewState();
}

class _RealNameViewState extends State<RealNameView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(36), ScreenUtil().setHeight(20), ScreenUtil().setWidth(36), ScreenUtil().setHeight(20)),
          child: Text("请确认信息真实有效，以免影响您的正常使用，如信息有误请点击修改。",style: TextStyle(
            color: Color.fromRGBO(102, 102, 102, 1),
            fontSize: ScreenUtil().setSp(24),
          ),),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(56),top: ScreenUtil().setHeight(60),bottom: ScreenUtil().setHeight(10)),
          child: Text("选择国籍",style: TextStyle(
            color: Colors.black,
            fontSize: ScreenUtil().setSp(26),
          ),),
        ),
        GestureDetector(child: 
        Container(
          margin: EdgeInsets.only(left: ScreenUtil().setWidth(56),right: ScreenUtil().setWidth(56),top: ScreenUtil().setHeight(10)),
          padding: EdgeInsets.only(top: ScreenUtil().setHeight(26),bottom: ScreenUtil().setHeight(26),left: ScreenUtil().setWidth(24),right:ScreenUtil().setWidth(24)),
        child: Row(
          children: <Widget>[
            Text("中国大陆",style: TextStyle(
              color: Color.fromRGBO(166, 177, 193, 1),
              fontSize: ScreenUtil().setSp(25)
            ),),
            Expanded(child: Container(
              alignment: Alignment.centerRight,
              child: Image.asset("Images/Assets/Icons/type/s.png",width: ScreenUtil().setWidth(32),height: ScreenUtil().setHeight(32),),
            ))
          ],
        ),
        width: double.infinity,
        decoration: BoxDecoration(
         border: Border.all(width: ScreenUtil().setWidth(2),color: Color.fromRGBO(151, 151, 151, 1)),
  borderRadius: BorderRadius.all(Radius.circular(5))
        
        )
        ),
        onTap: (){
         
                    print("支付方式");
                    showModalBottomSheet(
                        context: context, builder: (builder) => BottomSheet());
                  
        },
        ),
         Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(56),top: ScreenUtil().setHeight(30),bottom: ScreenUtil().setHeight(10)),
          child: Text("姓名",style: TextStyle(
            color: Colors.black,
            fontSize: ScreenUtil().setSp(26),
          ),),
        ),
        Container(
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(56),right: ScreenUtil().setWidth(56),top: ScreenUtil().setHeight(10)),
          child: TextField(
            cursorColor:Color.fromRGBO(151, 151, 151, 1),
            
            decoration: InputDecoration(
              hintText: '请输入您的姓名',
              hintStyle: TextStyle(
                color: Color.fromRGBO(166, 177, 193, 1),
                fontSize: ScreenUtil().setSp(25)
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                  color: Color.fromRGBO(151, 151, 151, 1),
                  
                   width: 2,
        )),
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5.0),
          ))
          ),
            
        ),
         Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(56),top: ScreenUtil().setHeight(30),bottom: ScreenUtil().setHeight(10)),
          child: Text("证件号码",style: TextStyle(
            color: Colors.black,
            fontSize: ScreenUtil().setSp(26),
          ),),
        ),
        Container(
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(56),right: ScreenUtil().setWidth(56),top: ScreenUtil().setHeight(10)),
          child: TextField(
            cursorColor:Color.fromRGBO(151, 151, 151, 1),
            
            decoration: InputDecoration(
              hintText: '请输入证件号码',
              hintStyle: TextStyle(
                color: Color.fromRGBO(166, 177, 193, 1),
                fontSize: ScreenUtil().setSp(25)
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                  color: Color.fromRGBO(151, 151, 151, 1),
                  
                   width: 2,
        )),
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5.0),
          ))
          ),
            
        )
       
      ],
    );
  }
}
class BottomSheet extends StatefulWidget {
  @override
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: ScreenUtil().setWidth(32),right: ScreenUtil().setWidth(32),top: ScreenUtil().setHeight(18),bottom: ScreenUtil().setHeight(18)),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: ScreenUtil().setWidth(1),color: Colors.grey)
            ),
            ),
            
            child: 
          Row(
            children: <Widget>[
              GestureDetector(child: Container(
                child: Text("取消",style: TextStyle(
                  color: Color.fromRGBO(153, 153, 153, 1),
                  fontSize: ScreenUtil().setSp(30),
                ),),
              ),
              onTap: (){
                Navigator.of(context).pop();
              },
              ),
              Expanded(child: GestureDetector(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text("确定",style: TextStyle(
                  color: Color.fromRGBO(16, 142, 233, 1),
                  fontSize: ScreenUtil().setSp(30),
                ),),
                ),
                
              ),)
            ],
          )),


        ],
      ),
    );
  }
}