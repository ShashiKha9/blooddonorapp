import 'package:blooddonor1/request.dart';
import 'package:flutter/material.dart';

class RequestAccepted extends StatefulWidget {
  @override
  static const routeName = '/RequestAccepted';
  RequestAcceptedState createState() => RequestAcceptedState();
}
class RequestAcceptedState extends State<RequestAccepted>{
  @override
  void initState() {
    super.initState();
    _navigatetoOnboarding1();
  }
  _navigatetoOnboarding1() async{
    await Future.delayed(Duration(seconds: 2),(){

    });
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Request()));
  }
  Widget build(BuildContext context) {
return Scaffold(
    backgroundColor: Color(0xffffffff),
    body: SingleChildScrollView(
    child:  Container(
      alignment: Alignment.center,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Padding(padding: EdgeInsets.all(75)),


     Image(image: AssetImage("lib/assets/Group 6872.jpg"),alignment: Alignment.center,),

      Padding(padding: EdgeInsets.all(19)),
      Text("  Your Request has been",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400,),textAlign: TextAlign.center,),
      Text("  accepted",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400,),textAlign: TextAlign.center,),

    ]
    )
)
    )
);

  }
}