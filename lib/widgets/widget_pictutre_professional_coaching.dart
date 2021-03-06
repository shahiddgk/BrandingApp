import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfessionalCoachingPictures extends StatefulWidget {

  String imageUrl;
  // ignore: non_constant_identifier_names
  String Date;
  // ignore: non_constant_identifier_names
  String Description;
  String title;
  // ignore: non_constant_identifier_names
  String B1title;
  // ignore: non_constant_identifier_names
  String B2title;
  // ignore: non_constant_identifier_names
  String B3title;
  // ignore: non_constant_identifier_names
  Function B1onPress;
  // ignore: non_constant_identifier_names
  Function B2onPress;
  // ignore: non_constant_identifier_names
  Function B3onPress;

  ProfessionalCoachingPictures(this.imageUrl,this.Date,this.title,this.B1title,this.B2title,this.B3title,this.B1onPress,this.B2onPress,this.B3onPress,this.Description);


  @override
  _ProfessionalCoachingPicturesState createState() => _ProfessionalCoachingPicturesState();
}

class _ProfessionalCoachingPicturesState extends State<ProfessionalCoachingPictures> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.only(left: 1,right: 1),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  child: Image.network(widget.imageUrl)),
              Text(widget.Date),
              Text(widget.title,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
              Padding(
                padding: EdgeInsets.only(left: 1,right: 10),
                child: Row(children: <Widget>[
                  Container(
                      height: 40,
                      width: 40,
                      child: TextButton(onPressed: widget.B1onPress, child: Text(widget.B1title,style: TextStyle(fontSize:10,color: Colors.black),))),
                  Container(
                      height: 40,
                      width: 40,
                      child: TextButton(onPressed: widget.B2onPress, child: Text(widget.B2title,style: TextStyle(fontSize:10,color: Colors.black),))),
                  Container(
                      height: 40,
                      width: 40,
                      child: TextButton(onPressed: widget.B3onPress, child: Text(widget.B3title,style: TextStyle(fontSize:9,color: Colors.black),))),
                ],),
              ),
              Container(margin:EdgeInsets.only(top: 25),height: 7,width: 90,color: Colors.amberAccent,),
              Container(margin:EdgeInsets.only(top: 25),child: Text(widget.Description)),
            ],),
        ),
      ),
    );
  }
}
