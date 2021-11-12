import 'package:flutter/cupertino.dart';

class Heading1 extends StatefulWidget {
  String H1;

  Heading1(this.H1);

  @override
  _Heading1State createState() => _Heading1State();
}

class _Heading1State extends State<Heading1> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.H1,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold));
  }
}
