import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NameField extends StatefulWidget {

  String hint;
  TextEditingController controller;

  NameField({
    this.hint,this.controller,});

  @override
  _NameFieldState createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'SFUIDisplay'
          ),
          onChanged: (value) {
            if(value.isEmpty){
              return "Please Enter Name";
            }
          },
          controller: widget.controller,
          validator: (value){
            if(value.isEmpty) {
              return "Name is required";
            }
            return null;
          },
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: widget.hint,
              prefixIcon: Icon(Icons.person_outline),
              labelStyle: TextStyle(
                  fontSize: 15
              )
          ),

        ),
      ],
    );
  }
}

