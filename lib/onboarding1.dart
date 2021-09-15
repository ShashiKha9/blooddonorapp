

import 'package:blooddonor1/Onboarding2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding1 extends StatefulWidget {
  static const routeName = '/Onboarding1';
  @override
  Onboarding1State createState()=> Onboarding1State();
}
class Onboarding1State extends State <Onboarding1> {

  PageController _controller = PageController();

  Widget build(BuildContext context) {
return ScreenUtilInit(
 designSize: Size(414,896),
    builder:()=>
  Scaffold(
  backgroundColor: Color(0xffffffff),
body:  Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 91.h,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 342.w)),
        Text('                                                                        Skip',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400,color: Color(0xff000000)),),
        SizedBox(height: 54.h,),


        Image(image: AssetImage("lib/assets/blood.webp"),height: 315.h,),
        SizedBox(height: 71.h,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 91.w)),


        Text("Request Blood",style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.w400),),
        SizedBox(height: 21.h,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 88.w)),

        Text("  Send Request to Donate",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400,),textAlign: TextAlign.center,),
        Text(" Blood",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400,),textAlign: TextAlign.center,),
        SizedBox(height: 192.h,),
        Row(
          children: [
            SizedBox(width: 33.w,),

            Text("Prev",style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400),),Spacer(),
            SizedBox(width: 33.w,),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Onboarding2.routeName);
              },

              child: Text('Next       ',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400),),
            ),






              ],

            ),






          ],
        ),



  )
    )


) ;
  }
}