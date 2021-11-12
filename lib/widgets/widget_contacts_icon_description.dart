import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsIconDescription extends StatefulWidget {
  IconData icon;
  String H2;
  String H1;

  ContactsIconDescription(this.icon,this.H1,this.H2);


  @override
  _ContactsIconDescriptionState createState() => _ContactsIconDescriptionState();
}

class _ContactsIconDescriptionState extends State<ContactsIconDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(widget.icon,size: 25,color: Colors.amber,),
            SizedBox(width: 2,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.H1,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                Text(widget.H2,),
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.2,),
          ],
        ),
      ],
    );
  }
}

class ContactsDescription extends StatefulWidget {
  String description;
   ContactsDescription(this.description);

  @override
  _ContactsDescriptionState createState() => _ContactsDescriptionState();
}

class _ContactsDescriptionState extends State<ContactsDescription> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.description),
    );
  }
}

