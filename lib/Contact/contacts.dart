import 'package:flutter/material.dart';
import 'package:flutter_smart_home_ui/widgets/Headings/widget_heading1.dart';
import 'package:flutter_smart_home_ui/widgets/Headings/widget_heading2.dart';
import 'package:flutter_smart_home_ui/widgets/TextFields/widget_email_field.dart';
import 'package:flutter_smart_home_ui/widgets/TextFields/widget_message_field.dart';
import 'package:flutter_smart_home_ui/widgets/TextFields/widget_name_field.dart';
import 'package:flutter_smart_home_ui/widgets/widget_button.dart';
import 'package:flutter_smart_home_ui/widgets/widget_contacts_icon_description.dart';
import 'package:kf_drawer/kf_drawer.dart';

class Contacts extends KFDrawerContent {
  Contacts({
    Key key,
  });

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
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
                    Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*1/40,left: 10,right: 10),
                      child: Align(alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Heading1("Contacts"),
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
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 2,
                              color: Colors.grey,),
                            SizedBox(height: 8,),
                            Row(
                              children: <Widget>[
                                Column(children: <Widget>[
                                  ContactsIconDescription(Icons.mail_rounded, "Email", "ullahk240@gmail.com",),
                                  SizedBox(height: 5,),
                                  ContactsIconDescription(Icons.mail_rounded, "Email", "ullahk240@gmail.com",),
                                  SizedBox(height: 5,),
                                  ContactsIconDescription(Icons.mail_rounded, "Email", "ullahk240@gmail.com",),
                                ],),
                                ContactsDescription("Description")
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 2,
                              color: Colors.grey,),
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