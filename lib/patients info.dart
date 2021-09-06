import 'dart:ui';
import 'package:blooddonor1/Requestaccepted.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PatientInfo extends StatefulWidget {
  static const routeName = '/PatientInfo';

  PatientInfoState createState() => PatientInfoState();
}
class PatientInfoState extends State <PatientInfo> {
  List<String> widgetList = ['A+', 'B+', 'AB+',"0+","A-","B-","AB-","O-"];
  List<String> bloodType = ["Blood","Plasma","Platelets"];
  List<String> critical = ["Yes","No"];





  int selectedIndex  = -1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child:Container(

            padding: EdgeInsets.all(38),
            child: Column(
              mainAxisSize:MainAxisSize.min,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text("Fill the Patients Info",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                Padding(padding: EdgeInsets.all(15)),


                Text("Patient name",textAlign: TextAlign.left,),
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
                            border: InputBorder.none


                        ),
                      ),
                    )

                ),

                Padding(padding: EdgeInsets.all(3)),

               RichText(text: TextSpan(
                 children: [
                   TextSpan(
                     text: "   Gender                                  Age",style: TextStyle(color: Colors.black),
                   )
                 ]
               )),

                Container(


                  height: 38.0,
                  width: 400.0,

                  child: GridView.count(
                    crossAxisCount:2,
                    childAspectRatio: 3,

                    padding: EdgeInsets.all(10),

                    mainAxisSpacing: 40.0,
                    crossAxisSpacing: 40.0,
                    children: [
                      
                      ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          tileColor: Color(0xffe1e1e1),
                          title: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none
                            ),
                          )
                      ),
                      ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          tileColor: Color(0xffe1e1e1),
                          title: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none
                            ),
                          )
                      ),

                    ],
                  )

                  ,
                ),
                Padding(padding:  EdgeInsets.all(10)),

                Text("   Blood Group required"),
    Container(
    height: 200,
                    child:   new GridView.builder(
                        itemCount: 8,
                        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4

                    ),

                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              child: Card(

                                  color: selectedIndex == index ? Colors.red : Color(0xffe1e1e1),
                                  child: Container(
                                    width: 60,
                                      child: Center(
                                          child: InkResponse(
                                            onTap: () {
                                              setState(() {
                                                selectedIndex = index;
                                              });
                                            },

                                            child: Center(
                                              child: Text(widgetList[index]),





                                            ),


                                          )
                                      )
                                  )
                              )
                          );

                          }
                    )




                    ),

                Text("Blood type needed"),
                Container(
                    height: 100,
                    child:   new GridView.builder(
                        itemCount: 3,
                        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemBuilder: (BuildContext context, int index1) {
                          return Container(
                              child: Card(

                                  color: selectedIndex == index1 ? Colors.red :Color(0xffe1e1e1),
                                  child: Container(
                                      height: 40,
                                      child: Center(
                                          child: InkResponse(
                                            onTap: () {
                                              setState(() {
                                                selectedIndex = index1;
                                              });
                                            },

                                            child: Center(
                                              child:   Text(bloodType[index1]),

                                            ),


                                          )
                                      )
                                  )
                              )
                          );



                        }
                    )
                ),
                Text("Units of Blood",textAlign: TextAlign.left,),
                Padding(padding: EdgeInsets.all(3)),
                Container(

                    height: 38.0,

                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      tileColor:Color(0xffe1e1e1),
                      title: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none


                        ),
                      ),
                    )

                ),
                Padding(padding: EdgeInsets.all(3)),

                Text("Critical"),
                Container(
                    height: 150,
                    child:   new GridView.builder(
                        itemCount: 2,
                        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              child: Card(

                                  color: selectedIndex == index ? Colors.red : Color(0xffe1e1e1),
                                  child: Container(
                                      child: Center(
                                          child: InkResponse(
                                            onTap: () {
                                              setState(() {
                                                selectedIndex = index;
                                              });
                                            },

                                            child: Center(
                                              child:   Text(critical[index]),

                                            ),


                                          )
                                      )
                                  )
                              )
                          );



                        }
                    )
                ),
                Padding(padding: EdgeInsets.all(3)),
                Text("Hospital Name",textAlign: TextAlign.left,),
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
                            border: InputBorder.none


                        ),
                      ),
                    )

                ),
                Padding(padding: EdgeInsets.all(3)),
                Text("Address",textAlign: TextAlign.left,),
                Padding(padding: EdgeInsets.all(3)),

                Container(

                    height: 110.0,

                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      tileColor: Color(0xffe1e1e1),
                      title: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none


                        ),
                      ),
                    )

                ),
                Padding(padding: EdgeInsets.all(3)),
                Text("City/Town",textAlign: TextAlign.left,),
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
                            border: InputBorder.none


                        ),
                      ),
                    )

                ),
                Padding(padding: EdgeInsets.all(3)),
                Text("State",textAlign: TextAlign.left,),
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
                            border: InputBorder.none


                        ),
                      ),
                    )

                ),
                Padding(padding: EdgeInsets.all(3)),
                Text("Pincode",textAlign: TextAlign.left,),
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
                            border: InputBorder.none


                        ),
                      ),
                    )

                ),
                Padding(padding: EdgeInsets.all(11)),
                Center(
                    child:Container(
                        width: 170,
                        child: RaisedButton(
                          child: Text("Submit",style: TextStyle(color: Colors.white),),
                          color: Color(0xfff50a48),
                          onPressed: () {
                            Navigator.pushNamed(context, RequestAccepted.routeName);

                          },
                        )










                    )
                )

              ],
            ),
          ),

        )


    );
  }






}