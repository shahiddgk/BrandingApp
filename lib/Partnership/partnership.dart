import 'package:flutter/material.dart';
import 'package:flutter_smart_home_ui/widgets/Headings/widget_heading1.dart';
import 'package:flutter_smart_home_ui/widgets/Headings/widget_heading2.dart';
import 'package:flutter_smart_home_ui/widgets/TextFields/widget_email_field.dart';
import 'package:flutter_smart_home_ui/widgets/TextFields/widget_message_field.dart';
import 'package:flutter_smart_home_ui/widgets/TextFields/widget_name_field.dart';
import 'package:flutter_smart_home_ui/widgets/widget_button.dart';
import 'package:kf_drawer/kf_drawer.dart';

class Partnership extends KFDrawerContent {
  Partnership({
    Key key,
  });

  @override
  _PartnershipState createState() => _PartnershipState();
}

class _PartnershipState extends State<Partnership> {
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.1,left: 10,right: 10),
                      child: Align(alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Heading1("Partnership"),
                            SizedBox(
                              height: 10,
                            ),
                            Container(height: 7,width: 90,color: Colors.amberAccent,),
                            SizedBox(
                              height: 30,
                            ),
                            Heading2("Let keep in Touch"),
                            Text("Description"),
                            SizedBox(
                              height: 10,
                            ),
                            Heading2("Drop Me A Line"),
                            SizedBox(
                              height: 20,
                            ),
                            NameField(hint: "Your Name",),
                            SizedBox(
                              height: 10,
                            ),
                            EmailField(hint: "Your Email",),
                            SizedBox(
                              height: 10,
                            ),
                            MessageField(hint: "Enter Message",),
                            SizedBox(
                              height: 10,
                            ),
                            Button(title: "Say Hello",onPressed: (){},),
                          ],
                        ),),)
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