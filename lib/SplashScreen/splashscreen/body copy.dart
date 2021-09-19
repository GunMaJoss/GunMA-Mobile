import 'package:flutter/material.dart';
import 'package:gunma/HomePage/home_screen_backup.dart';
import 'package:gunma/Splashscreen/splashscreen/background.dart';
import 'package:gunma/components/left_rounded_button.dart';
// import 'package:gunma/SignUp/signup_screen.dart';
// import 'package:gunma/components/already_have_an_account_check.dart';
// import 'package:gunma/components/rounded_button.dart';
// import 'package:gunma/components/rounded_input_field.dart';
// import 'package:gunma/components/rounded_password_field.dart';
import 'package:gunma/constants.dart';

class BodyCopy extends StatelessWidget {
  const BodyCopy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Background(
      // SizedBox(height: 80),
      child: Container(
        child: Column(
          // alignment: Alignment(0, -0.50),
          // child: 
          //   Text(
          //     "find a cool internship that fits your field", 
          //     style: TextStyle(
          //       fontSize: 19
          //       , fontWeight: FontWeight.bold, color: Colors.white, fontFamily: ),
          //   ),
          // LeftRoundedButton(
          //   text: "Explore Now",
          //   press: () {
          //     Navigator.push(
          //       context, MaterialPageRoute(
          //         builder: (
          //           context){
          //             return HomePage();
          //             },
          //       ),
          //     );
          //   },
          //   color: bPrimaryColor,
          // ),
          // SizedBox(height: 20),
          // AlreadyHaveAnAccountCheck(
          //   press: () {
          //     Navigator.push(
          //       context, MaterialPageRoute(
          //         builder: (
          //           context){
          //             return SignUpScreen();
          //             },
          //       ),
          //     );
          //   },
          // ),
          // // 
          // ],
        ),

      ),
    );
  }
}
