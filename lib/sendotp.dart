import 'package:blooddonor1/main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';





class Sendotp extends StatelessWidget{
  static const routeName = '/Sendotp';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(35),
          alignment: Alignment.topCenter,
          child: Column(
              children: [
                Text("OTP Verification",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w600),),
                Padding(padding: EdgeInsets.all(10)),
                Text("Enter the OTP sent to your mobile number ",style: TextStyle(fontSize: 15),),
                Padding(padding: EdgeInsets.all(15)),

                  PinCodeTextField(
                    enableActiveFill: true,
                    appContext: context,


                    length: 5,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),

                    fieldHeight: 45,
                    fieldWidth: 40,
                    activeColor: Color(0xffe1e1e1),
                    activeFillColor: Color(0xffe1e1e1),
                    inactiveFillColor: Color(0xffe1e1e1),
                    inactiveColor: Color(0xffe1e1e1),




                  ),
                    onChanged: (value){
                      print(value);
                    },

                  ) ,







                Padding(padding: EdgeInsets.all(11)),
                Container(
                  width: 170,
                  child:  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    color: Color(0xfff50a48),
                    onPressed: (){
                      Navigator.of(context).pushNamed(Profile.routeName);


                    },

                    child: Text("Verify",style: TextStyle(color: Colors.white),),
                  ),
                ),
                Padding(padding: EdgeInsets.all(11)),

                RichText(text: TextSpan(
                    children:[
                      TextSpan(text: "Didn't receive any code ? " ,style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "Resend Code",style: TextStyle(color: Color(0xfff50a48)),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, Profile.routeName);

                            }

                      )
                    ]
                ))









              ]
          ),
        )


    );






  }

}