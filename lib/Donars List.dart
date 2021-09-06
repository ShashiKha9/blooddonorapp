import 'package:blooddonor1/Reviewpage.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';

class DonarList extends StatelessWidget{
  static const routeName = '/DonarList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:  SingleChildScrollView(
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(25),
                child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Donars List",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500),),
                      Padding(padding: EdgeInsets.all(11)),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 170,
                              child:  Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(color: Colors.grey),
                                ),
                                child: Row(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(padding: EdgeInsets.symmetric(horizontal: 7,vertical: 14)),
                                    CircleAvatar(

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        verticalDirection: VerticalDirection.down,
                                        children: [
                                          Text("Plasma",style: TextStyle(fontSize: 14,color: Colors.white),textAlign: TextAlign.center,),
                                          Text("B+",style: TextStyle(fontSize: 23,color: Colors.white),)
                                        ],
                                      ),

                                      backgroundColor: Color(0xffde1241),
                                      radius: 38,

                                    ),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(padding: EdgeInsets.all(6)),
                                        RichText(text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: "Donar Name:  ",style: TextStyle(fontSize: 16,color: Colors.black)
                                              ),
                                              TextSpan(
                                                  text: "Anita Singh ",style: TextStyle(fontSize: 13,color: Colors.black)
                                              ),

                                            ]
                                        )),
                                        Row(
                                          children: [
                                            Padding(padding: EdgeInsets.symmetric(vertical: 15)),

                                            RichText(text: TextSpan(
                                                children: [

                                                  TextSpan(
                                                      text: "Gender       Age        ",style: TextStyle(color: Colors.black)
                                                  )
                                                ]
                                            ))
                                          ],

                                        ),
                                        Row(
                                          children: [

                                            Padding(padding: EdgeInsets.symmetric(vertical: 11,horizontal: 2)),

                                            RichText(text: TextSpan(
                                                children: [

                                                  TextSpan(
                                                      text: "Female     48            ",style: TextStyle(color: Colors.black)
                                                  )
                                                ]
                                            ))
                                          ],

                                        ),
                                        Row(
                                          children: [

                                            Padding(padding: EdgeInsets.symmetric(vertical: 11,horizontal: 2)),

                                            RichText(text: TextSpan(
                                                children: [

                                                  TextSpan(
                                                    text: "Vasanth Kunj           2 : 45 PM",style: TextStyle(color: Colors.black),

                                                  )
                                                ]
                                            ))
                                          ],

                                        ),
                                        Row(
                                          children: [

                                            Padding(padding: EdgeInsets.symmetric(horizontal: 2)),

                                            RichText(text: TextSpan(
                                                children: [



                                                  TextSpan(
                                                      text: "                                      Check details  >",style: TextStyle(color: Colors.black,fontSize: 12),
                                                      recognizer: TapGestureRecognizer()
                                                        ..onTap = () {
                                                          print("connect");

                                                        }
                                                  )
                                                ]
                                            ))
                                          ],

                                        ),
                                        Padding(padding: EdgeInsets.all(3)),
                                        Row(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 170,
                                              child:    RaisedButton(
                                                color: Color(0xff04b327),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(5),
                                                ),
                                                onPressed: (){
                                                  Navigator.of(context).pushNamed(Review.routeName);


                                                },
                                                child: Text("Contact Donar",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),),



                                            ),

                                          ],
                                        )


                                      ],







                                    ),












                                  ],

                                ),


                              ),

                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 170,
                                    child:  Card(
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide(color: Colors.grey),
                                      ),
                                      child: Row(
                                        // crossAxisAlignment: CrossAxisAlignment.center,
                                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(padding: EdgeInsets.symmetric(horizontal: 7,vertical: 14)),
                                          CircleAvatar(

                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              verticalDirection: VerticalDirection.down,
                                              children: [
                                                Text("Plasma",style: TextStyle(fontSize: 14,color: Colors.white),textAlign: TextAlign.center,),
                                                Text("B+",style: TextStyle(fontSize: 23,color: Colors.white),)
                                              ],
                                            ),

                                            backgroundColor: Color(0xffde1241),
                                            radius: 38,

                                          ),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(padding: EdgeInsets.all(6)),
                                              RichText(text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                        text: "Patient Name:  ",style: TextStyle(fontSize: 16,color: Colors.black)
                                                    ),
                                                    TextSpan(
                                                        text: "Anita Singh ",style: TextStyle(fontSize: 13,color: Colors.black)
                                                    ),

                                                  ]
                                              )),
                                              Row(
                                                children: [
                                                  Padding(padding: EdgeInsets.symmetric(vertical: 15)),

                                                  RichText(text: TextSpan(
                                                      children: [

                                                        TextSpan(
                                                            text: "Gender       Age        Requirement",style: TextStyle(color: Colors.black)
                                                        )
                                                      ]
                                                  ))
                                                ],

                                              ),
                                              Row(
                                                children: [

                                                  Padding(padding: EdgeInsets.symmetric(vertical: 11,horizontal: 2)),

                                                  RichText(text: TextSpan(
                                                      children: [

                                                        TextSpan(
                                                            text: "Female     48            Plasma",style: TextStyle(color: Colors.black)
                                                        )
                                                      ]
                                                  ))
                                                ],

                                              ),
                                              Row(
                                                children: [

                                                  Padding(padding: EdgeInsets.symmetric(vertical: 11,horizontal: 2)),

                                                  RichText(text: TextSpan(
                                                      children: [

                                                        TextSpan(
                                                          text: "Lifeline Hospital,      2 : 45 PM",style: TextStyle(color: Colors.black),

                                                        )
                                                      ]
                                                  ))
                                                ],

                                              ),
                                              Row(
                                                children: [

                                                  Padding(padding: EdgeInsets.symmetric(horizontal: 2)),

                                                  RichText(text: TextSpan(
                                                      children: [

                                                        TextSpan(
                                                            text: "Delhi                        ",style: TextStyle(fontSize: 14,color: Colors.black)
                                                        ),

                                                        TextSpan(
                                                            text: "Check details  >",style: TextStyle(color: Colors.black,fontSize: 12),
                                                            recognizer: TapGestureRecognizer()
                                                              ..onTap = () {
                                                                print("connect");

                                                              }
                                                        )
                                                      ]
                                                  ))
                                                ],

                                              ),
                                              Padding(padding: EdgeInsets.all(3)),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 170,
                                                    child:    RaisedButton(
                                                      color: Color(0xff04b327),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      onPressed: (){
                                                        Navigator.of(context).pushNamed(Review.routeName);


                                                      },
                                                      child: Text("Contact Donar",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),),



                                                  ),

                                                ],
                                              )


                                            ],







                                          ),












                                        ],

                                      ),


                                    ),

                                  )
                                ],




                              ),


                            ),

                          ],

                        ),


                      )





                    ]
                )

            )
        )















    );


  }
}


