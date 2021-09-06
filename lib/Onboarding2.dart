

import 'package:blooddonor1/Onboarding3.dart';
import 'package:blooddonor1/onboarding1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding2 extends StatefulWidget {
  static const routeName = '/Onboarding2';

  @override
  Onboarding2State createState()=> Onboarding2State();
}
class Onboarding2State extends State <Onboarding2> {
  static const routeName = '/Onboarding2';

  PageController _controller = PageController();

  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(414,896),
        builder:()=> Scaffold(
        backgroundColor: Color(0xffffffff),
        body:
             Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 91.h,),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 342.w)),
                      Text('                                                                        Skip',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400,color: Color(0xff000000)),),
                      SizedBox(height: 54.h,),

                         Image(image: AssetImage("lib/assets/new.jpg"),height: 315.h,alignment: Alignment.center,),
                      SizedBox(height: 71.h,),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 91.w)),



                      Text("Donate Blood",style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.w400),),
                      SizedBox(height: 21.h,),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 88.w)),
                      Text("  Search Requests and help",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400,),textAlign: TextAlign.center,),
                      Text("  by donating blood",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400,),textAlign: TextAlign.center,),
                      SizedBox(height: 192.h,),
                      Row(
                        children: [
                          SizedBox(width: 33.w,),

                          Text("Prev",style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400),),Spacer(),
                          SizedBox(width: 33.w,),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Onboarding3.routeName);
                            },

                            child: Text('Next       ',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400),),
                          ),






                        ],

                      ),

                    ]

                )
            )
        )
    ) ;
  }
}