import 'package:flutter/material.dart';
import 'package:flutter_smart_home_ui/widgets/TextFields/widget_email_field.dart';
import 'package:flutter_smart_home_ui/widgets/TextFields/widget_password_field.dart';
import 'package:flutter_smart_home_ui/widgets/widget_button.dart';
import 'package:kf_drawer/kf_drawer.dart';

// ignore: must_be_immutable
class LogIn extends KFDrawerContent {
  LogIn({
    Key key,
  });

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(23),
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                child: Container(
                                  color: Color(0xfff5f5f5),
                                  child: EmailField(
                                    hint: "Enter email",
                                  )
                                ),
                              ),
                              Container(
                                color: Color(0xfff5f5f5),
                                child: PasswordField(
                                  hint: "Enter password",
                                )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Button(title: "SignIn",onPressed: (){
                                  _SignIn();
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Center(
                                  child: Text('Forgot your password?',
                                    style: TextStyle(
                                        fontFamily: 'SFUIDisplay',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void _SignIn() {
    if(_formKey.currentState.validate()) {
      print("Success");
      // ignore: deprecated_member_use
      Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text("Login success")));
    }
  }
}