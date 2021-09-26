import 'package:flutter/material.dart';
import 'package:gunma/SignUp/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static var routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      resizeToAvoidBottomInset : false,
      backgroundColor: Color(0xff471AFB),
      body: Body(),
    );
  }
}
