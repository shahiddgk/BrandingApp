import 'package:flutter/material.dart';
import 'package:flutter_smart_home_ui/widgets/Headings/widget_heading1.dart';
import 'package:flutter_smart_home_ui/widgets/Headings/widget_heading2.dart';
import 'package:flutter_smart_home_ui/widgets/widget_icon_with_description.dart';
import 'package:kf_drawer/kf_drawer.dart';

class Experience extends KFDrawerContent {
  Experience({
    Key key,
  });

  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {

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
                        Heading1("Experience"),
                        SizedBox(
                          height: 10,
                        ),
                        Container(height: 7,width: 90,color: Colors.amberAccent,),
                        SizedBox(
                          height: 30,
                        ),
                        Heading2("14 Years Experience"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Description Paragraph"),
                        SizedBox(
                          height: 10,
                        ),
                        IconDescription(Icons.email, "Ace Adevertising", "Project Manager", "2013-2011","Description"),
                        IconDescription(Icons.message, "Ace Adevertising", "Project Manager", "2013-2011","Description"),
                        IconDescription(Icons.send, "Ace Adevertising", "Project Manager", "2013-2011","Description"),
                        IconDescription(Icons.print, "Ace Adevertising", "Project Manager", "2013-2011","Description"),
                        IconDescription(Icons.search, "Ace Adevertising", "Project Manager", "2013-2011","Description"),
                        IconDescription(Icons.title, "Ace Adevertising", "Project Manager", "2013-2011","Description"),
                        IconDescription(Icons.access_alarm, "Ace Adevertising", "Project Manager", "2013-2011","Description"),
                        IconDescription(Icons.accessibility_new, "Ace Adevertising", "Project Manager", "2013-2011","Description"),
                        IconDescription(Icons.accessible_sharp, "Ace Adevertising", "Project Manager", "2013-2011","Description"),
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