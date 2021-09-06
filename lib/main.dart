// @dart=2.9
import 'package:blooddonor1/Donars%20List.dart';
import 'package:blooddonor1/Onboarding2.dart';
import 'package:blooddonor1/Onboarding3.dart';
import 'package:blooddonor1/Requestaccepted.dart';
import 'package:blooddonor1/Reviewpage.dart';
import 'package:blooddonor1/Signup.dart';
import 'package:blooddonor1/Splash.dart';
import 'package:blooddonor1/request.dart';
import 'package:flutter/rendering.dart';
import 'onboarding1.dart';
import 'sendotp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'patients info.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      routes: {
        PatientInfo.routeName:(context) => PatientInfo(),
        Request.routeName:(context) => Request(),
        DonarList.routeName:(context) => DonarList(),
        Review.routeName:(context) => Review(),
        Onboarding1.routeName:(context) => Onboarding1(),
        Onboarding2.routeName:(context) => Onboarding2(),
        Onboarding3.routeName:(context) => Onboarding3(),
        Signup.routeName:(context) => Signup(),
        Sendotp.routeName:(context) => Sendotp(),
        Profile.routeName:(context) => Profile(),
        RequestAccepted.routeName:(context) => RequestAccepted(),






      },
      home:  Onboarding1()));


}
class Profile extends StatelessWidget{
  static const routeName = '/Profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        resizeToAvoidBottomInset: false,

        body:      SingleChildScrollView(
            child:  Container(

              padding: EdgeInsets.all(35),
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(

                  child: Column(
                    children: [
                      Text("Profile",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w600),),
                      Padding(padding: EdgeInsets.all(10)),
                      Text("Create an account to send requests as well as to donate blood",style: TextStyle(fontSize: 16),),
                      Padding(padding: EdgeInsets.all(15)),

                      CircleAvatar(backgroundColor: Colors.black26,child: Icon(Icons.camera_alt,color: Colors.black,size: 35,), radius: 60,),

                      Padding(padding: EdgeInsets.all(12)),

                      Container(
                        height: 50,
                        width: 350,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width:90,
                          child:  Card(
                              color: Color(0xffE1e1e1),

                              child: Column(
                                children: [
                                  Text("Donations",style: TextStyle(color: Colors.black,fontSize: 12),)

                                ],
                              ),
                            ),
                            ),
                            SizedBox(
                             width: 3,
                            ),
                            Container(
                             width: 90,
                        child:    Card(
                          color: Color(0xffE1e1e1),

                              child: Column(
                                children: [
                                  Text("Requests",style: TextStyle(color: Colors.black,fontSize: 12),)

                                ],
                              ),
                            ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                              width: 90,
                         child:   Card(
                           color: Color(0xffE1e1e1),
                              child: Column(
                                children: [
                                  Text("Last Donation",style: TextStyle(color: Colors.black,fontSize: 12),)

                                ],
                              ),
                            ),
                            ),



                          ],




                        ),
                      ),
                      Padding(padding: EdgeInsets.all(2)),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: 500,

                        child:  SizedBox(
                          height: 100,
                          width: 500,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.zero,
                                height: 35.0,
                                child: ListTile(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                  title: TextField(
                                    textAlignVertical: TextAlignVertical.bottom,
                                    decoration: InputDecoration(

                                      hintText:"Name",hintStyle: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600),
                                        fillColor: Color(0xffE1e1e1),
                                      filled: true,
                                       border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide.none

                                  )

                                    ),


                                  ),


                                ),


                              ),
                              Padding(padding: EdgeInsets.all(11)),

                              Container(
                                margin: EdgeInsets.zero,
                                height: 35.0,
                                width: 400,
                                child: ListTile(

                                  title: TextField(
                                    textAlignVertical: TextAlignVertical.bottom,
                                    decoration: InputDecoration(
                                      hintText:"Email id",hintStyle: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600),
                                        fillColor: Color(0xffE1e1e1),
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide.none

                                      )

                                    ),


                                  ),


                                ),


                              ),
                              Padding(padding: EdgeInsets.all(11)),


                              Container(
                                margin: EdgeInsets.zero,
                                height: 35.0,
                                child: ListTile(

                                  title: TextField(
                                    textAlignVertical: TextAlignVertical.bottom,
                                    decoration: InputDecoration(
                                      hintText:"Phone No",hintStyle: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600),
                                      fillColor: Color(0xffE1e1e1),
                                      filled: true,
                                      border:  OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide.none

                                  ),


                                  ),


                                ),


                              ),
                              ),
                              Padding(padding: EdgeInsets.all(11)),


                              Container(
                                margin: EdgeInsets.zero,
                                height: 35.0,
                                child: ListTile(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  title: TextField(
                                    textAlignVertical: TextAlignVertical.bottom,
                                    decoration: InputDecoration(
                                      hintText:"Date of Birth",hintStyle: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600),
                                      fillColor: Color(0xffE1e1e1),
                                      filled: true,
                                      border:  OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(4),
                                          borderSide: BorderSide.none

                                    ),


                                  ),


                                ),


                              ),
                              ),
                              Padding(padding: EdgeInsets.all(11)),


                              Container(
                                margin: EdgeInsets.zero,
                                height: 35.0,
                                child: ListTile(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  title: TextField(
                                    textAlignVertical: TextAlignVertical.bottom,
                                    decoration: InputDecoration(
                                      hintText:"Blood Group",hintStyle: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600),
                                      fillColor: Color(0xffE1e1e1),
                                      filled: true,
                                      border:  OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(4),
                                          borderSide: BorderSide.none

                                    ),


                                  ),


                                ),


                              ),
                              ),

                              Padding(padding: EdgeInsets.all(11)),


                              Container(
                                margin: EdgeInsets.zero,
                                height: 50.0,
                                child: ListTile(

                                  title: TextField(
                                    textAlignVertical: TextAlignVertical.bottom,
                                    decoration: InputDecoration(
                                      hintText:"Address",hintStyle: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600),
                                      fillColor: Color(0xffE1e1e1),
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide.none

                                      ),


                                    ),


                                  ),


                                ),


                              ),
                              Padding(padding: EdgeInsets.all(11)),


                              Container(
                                margin: EdgeInsets.zero,
                                height: 35.0,
                                child: ListTile(

                                  title: TextField(
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.bottom,
                                    decoration: InputDecoration(
                                      hintText:"City/Town",hintStyle: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600),
                                      fillColor: Color(0xffE1e1e1),
                                      filled: true,
                                      border:  OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(4),
                                          borderSide: BorderSide.none

                                    ),


                                  ),


                                ),


                              ),
                              ),
                              Padding(padding: EdgeInsets.all(11)),


                              Container(
                                margin: EdgeInsets.zero,
                                height: 35.0,
                                child: ListTile(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  title: TextField(
                                    textAlignVertical: TextAlignVertical.bottom,

                                    decoration: InputDecoration(
                                      hintText:"State",hintStyle: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600),
                                      fillColor: Color(0xffE1e1e1),
                                      filled: true,
                                      border:  OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(4),
                                          borderSide: BorderSide.none

                                      ),
                                    ),


                                  ),


                                ),


                              ),
                              Padding(padding: EdgeInsets.all(11)),


                              Container(
                                margin: EdgeInsets.zero,
                                height: 35.0,
                                child: ListTile(

                                  title: TextField(
                                    textAlignVertical: TextAlignVertical.bottom,
                                    decoration: InputDecoration(
                                      hintText:"Pincode",hintStyle: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600,),
                                      fillColor: Color(0xffE1e1e1),
                                      filled: true,
                                      border:  OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(4),
                                          borderSide: BorderSide.none

                                      ),
                                    ),


                                  ),


                                ),


                              ),
                              Padding(padding: EdgeInsets.all(19)),

                              Container(
                                  width: 160,
                                  child:    RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    color: Color(0xfff50a48),
                                    child: Text("Save",style: TextStyle(color: Colors.white),),
                                    onPressed: (){
                                      Navigator.pushNamed(context, PatientInfo.routeName).then((onValue) {
                                        print("efeioi");
                                      }
                                      );

                                    },


                                  )
                              )
                            ],
                          ),







                        ),
                      ),




                    ],


                  )


              ),


            )
        )
    );

  }
}





