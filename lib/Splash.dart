import 'package:blooddonor1/onboarding1.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget{
  @override
  SplashState createState()=> SplashState();
  }
  class SplashState extends State <Splash>{

    @override
      void initState() {
        super.initState();
        _navigatetoOnboarding1();
      }
      _navigatetoOnboarding1() async{
        await Future.delayed(Duration(seconds: 3),(){
          
        });
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboarding1()));
      }
        Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Color(0xffE72141),
    body: SingleChildScrollView(
child: Container(
  child: Column(
    children: [

      Image(image: AssetImage("lib/assets/Rectangle 1.jpg"),),



    ],
  ),

),
    )
)   ;
  }
}


