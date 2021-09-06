import 'dart:ui';

import 'package:blooddonor1/sendotp.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget{
  static const routeName = '/SignUp';

  @override
  Widget build(BuildContext context) {
return Scaffold(

body: Container(
  padding: EdgeInsets.all(35),
  alignment: Alignment.topCenter,

  child: Column(
    children: [
      Text("Sign Up",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w400),),
      Padding(padding: EdgeInsets.all(10)),

      Text("  Name                                                                   ",textAlign: TextAlign.left,style: TextStyle(color:Color(0xff000000),fontSize: 20 )),
      Padding(padding: EdgeInsets.all(3)),
      Container(

          height: 38.0,

          child: ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            tileColor: Color(0xffe1e1e1),
            title: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
              ),
            ),
          ),


      ),
      Padding(padding: EdgeInsets.all(10)),

      Text("  Phone No.                                                            ",textAlign: TextAlign.left,style: TextStyle(color:Color(0xff000000),fontSize: 20 )),
      Padding(padding: EdgeInsets.all(3)),
      Container(

        height: 38.0,

        child: ListTile(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
          ),
          tileColor: Color(0xffe1e1e1),
          title: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),


      ),
      Padding(padding: EdgeInsets.all(14)),
      Container(
        width: 170,
        child:  RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
          ),
          color: Color(0xffE72141),
          onPressed: (){
            Navigator.pushNamed(context, Sendotp.routeName);


          },

          child: Text("Submit",style: TextStyle(color: Colors.white),),
        ),
      ),



    ]
)
    )
);
  }
}