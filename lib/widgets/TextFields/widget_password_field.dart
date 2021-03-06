import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PasswordField extends StatefulWidget {

  String hint;
  TextEditingController controller;

  PasswordField({
    this.hint,this.controller,});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {

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
              return "Please Enter Password";
            }
          },
          controller: widget.controller,
          obscureText: true,
          validator: (value){
            if(value.isEmpty) {
              return "Please enter password";
            }else if(value.length<8){
              return "Password must have 8 characters";
            }
            return null;
          },
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: widget.hint,
              prefixIcon: Icon(Icons.lock_outline),
              labelStyle: TextStyle(
                  fontSize: 15
              )
          ),

        ),
      ],
    );
  }

}

