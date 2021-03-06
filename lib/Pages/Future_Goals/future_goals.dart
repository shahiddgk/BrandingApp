import 'package:flutter/material.dart';
import 'package:flutter_smart_home_ui/widgets/Headings/widget_heading1.dart';
import 'package:flutter_smart_home_ui/widgets/Headings/widget_heading2.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'future_picture_details.dart';

// ignore: must_be_immutable
class FutureGoals extends KFDrawerContent {
  FutureGoals({
    Key key,
  });

  @override
  _FutureGoalsState createState() => _FutureGoalsState();
}

class _FutureGoalsState extends State<FutureGoals> {

  List images = ["https://images.pexels.com/photos/1072179/pexels-photo-1072179.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  child: Material(
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: widget.onMenuPressed,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*1/40,left: 20,right: 20),child:
                    Align(alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Heading1("Future Goals"),

                          Container(margin:EdgeInsets.only(top: 25),height: 7,width: 90,color: Colors.amberAccent,),

                          Heading2("Our Portfolio"),

                          Container(margin:EdgeInsets.only(top: 25),child: Text("Description Paragraph")),

                          Container(
                            margin:EdgeInsets.only(top: 25),
                            child: ListView.builder(itemCount: images.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FutureGoalsPictureDetails()));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Image.network(images[index]),
                                  ),
                                );
                              },),
                          )
                        ],
                      ),
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}