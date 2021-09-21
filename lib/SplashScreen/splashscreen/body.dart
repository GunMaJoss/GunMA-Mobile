import 'package:flutter/material.dart';
// import 'package:gunma/HomePage/home_screen_backup.dart';
import 'package:gunma/Login/login_screen.dart';
import 'package:gunma/Splashscreen/splashscreen/background.dart';
import 'package:gunma/components/left_rounded_button.dart';
// import 'package:gunma/SignUp/signup_screen.dart';
// import 'package:gunma/components/already_have_an_account_check.dart';
// import 'package:gunma/components/rounded_button.dart';
// import 'package:gunma/components/rounded_input_field.dart';
// import 'package:gunma/components/rounded_password_field.dart';
import 'package:gunma/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Background(
      // SizedBox(height: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, 
        children: <Widget> [
          SizedBox(height: 180),
          Text(
            "find a cool internship that \nfits your field", 
            style: TextStyle(
              fontFamily: 'Exo',
              fontSize: 27
              , fontWeight: FontWeight.bold, color: Colors.white),
          ),     
          
        SizedBox(height: 10),    
        Text(
            "  Stop for wasting your time and start to think about \n  your future", 
            style: TextStyle(
              fontFamily: 'Exo',
              fontSize: 15
              , color: Colors.white),
          ),
        // RoundedInputField(
        //   hintText: "Your Email",
        //   onChanged: (Value) {},
        // ),
        // RoundedPasswordField(
        //   onChanged: (value){},
        // ),
        // SizedBox(height: 10),
        SizedBox(height: 20),
        LeftRoundedButton(
          text: "Explore Now",
          press: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (
                  context){
                    return LoginScreen();
                    },
              ),
            );
          },
          color: bPrimaryColor,
        ),
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
        ],
      ),
    );
  }
}
