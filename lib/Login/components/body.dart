import 'package:flutter/material.dart';
import 'package:gunma/HomePage/home_screen.dart';
// import 'package:gunma/HomePage/home_screen_backup.dart';
import 'package:gunma/Login/components/background.dart';
import 'package:gunma/SignUp/signup_screen.dart';
import 'package:gunma/components/already_have_an_account_check.dart';
import 'package:gunma/components/rounded_button.dart';
import 'package:gunma/components/rounded_input_field.dart';
import 'package:gunma/components/rounded_password_field.dart';
import 'package:gunma/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: <Widget> [
        SizedBox(height: 80),
        //   Text(
        //     "LOGIN", 
        //     style: TextStyle(
        //       fontWeight: FontWeight.bold, color: Colors.white),
        // ),
        SizedBox(height: 150),
        RoundedInputField(
          hintText: "Your Email",
          onChanged: (Value) {},
        ),
        RoundedPasswordField(
          onChanged: (value){},
        ),
        SizedBox(height: 10),
        RoundedButton(
          text: "LOGIN",
          press: () {
            // Navigator.push(
            //   context, MaterialPageRoute(
            //     builder: (
            //       context){
            //         return HomePageScreen();
            //         },
            //   ),
            // );
          },
          color: bPrimaryColor,
        ),
        SizedBox(height: 20),
        AlreadyHaveAnAccountCheck(
          press: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (
                  context){
                    return SignUpScreen();
                    },
              ),
            );
          },
        ),
        // 
        ],
      ),
    );
  }
}
