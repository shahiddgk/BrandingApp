import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageField extends StatefulWidget {

  String hint;
  TextEditingController controller;

  MessageField({
    this.hint,this.controller,});

  @override
  _MessageFieldState createState() => _MessageFieldState();
}

class _MessageFieldState extends State<MessageField> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          maxLines: 4,
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'SFUIDisplay'
          ),
          onChanged: (value) {
            if(value.isEmpty){
              return "Please Enter Message";
            }
          },
          controller: widget.controller,
          validator: (value){
            if(value.isEmpty) {
              return "Message is required";
            }
            return null;
          },
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: widget.hint,
              prefixIcon: Icon(Icons.message),
              labelStyle: TextStyle(
                  fontSize: 15
              )
          ),

        ),
      ],
    );
  }
}

