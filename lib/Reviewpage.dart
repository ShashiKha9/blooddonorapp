
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Review extends StatelessWidget{
  static const routeName = '/Review';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  SingleChildScrollView(
      child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(38),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Text("Review your Donar",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500),),
      Padding(padding: EdgeInsets.all(14)),
          CircleAvatar(backgroundColor: Colors.black26,child: Icon(Icons.camera_alt,color: Colors.black,size: 35,), radius: 60,),
          Padding(padding: EdgeInsets.all(6)),
          Text("Donar name",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 19),),
          Padding(padding: EdgeInsets.all(14)),
          RatingBar.builder(
            unratedColor: Colors.black,
            initialRating: 4,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Color(0xfffa7907),
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          Padding(padding: EdgeInsets.all(14)),
          Text("Write a review",style: TextStyle(color: Color(0xffde1241),fontWeight: FontWeight.w400),),
          Padding(padding: EdgeInsets.all(8)),
          Container(
            height: 160,
            width: 400,
            child:Card(
              elevation: 10,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: Colors.grey)
              ),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: InputBorder.none
                ),
              ),
            )


          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            width: 140,
        child:  RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            color:  Color(0xfff50a48),
            onPressed: (){

          },
            child: Text("Submit",style: TextStyle(color: Colors.white),),
          )


)
        ]
    )
      )
    )
    );

  }
}