import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gunma/HomePage/components/bottom_navigation_bar.dart';
import 'package:gunma/HomePage/home_screen1.dart';
import 'package:gunma/ProfilePage/profile_screen.dart';
import 'package:gunma/Register/RegisterScreen.dart';
// import 'package:gunma/Register/signup_screen.dart';
import 'package:gunma/components/already_have_an_account_check.dart';
// import 'package:myapp1/HomePage/components/background.dart';
import 'package:http/http.dart' as http;
import 'package:gunma/HomePage/components/background.dart';
// import 'package:gunma/HomePage/home_screen1.dart';
import 'package:gunma/components/rounded_button copy.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Container(
        // height: 10000,
        child: Scaffold(
          body:
              // Padding(padding:
              //   const EdgeInsets.all(10.0),
              //   child:
              SafeArea(
                  child: Center(
            child: Container(
              // height: 1000,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/backgorundLogin.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 20,
                            left: 20,
                          ),
                          child: Text(
                            'Welcome Back to GUNMA!\n   Login To Your Account',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFFAFA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.email,
                              color: Color(0xffA9A9A9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFFAFA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Color(0xffA9A9A9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(
                      text: "LOGIN",
                      press: () {
                        // print("\n\n");
                        // print(emailController.text);
                        // print(passwordController.text);
                        // print("\n\n");
                        login();
                      },
                      color: Color(0xff3E83A8),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                   
                    AlreadyHaveAnAccountCheck(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(  
                            builder: (context) {
                              return RegisterScreen();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          )),
          // ),
        ),
      ),
    );
  }

  Future<void> login() async {
    if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
      try {
      // final url = Uri.parse('http://api.gunma.my.id/api/login-user');
      final url = Uri.parse('http://api.gunma.my.id/api/v1/login-user');
      
      Map<String, String> requestBody = <String, String>{
        'email': emailController.text,
        'password': passwordController.text
        // 'email': 'eve.holt@reqres.in',
        // 'password': 'cityslicka',
        // 'email': 'yoan@gmail.com',
        //     'password': 'yoan123456'
      };

      var request = http.MultipartRequest('POST', url)..fields.addAll(requestBody);
      var response = await request.send();
      // print('OYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY');
      // print(response.statusCode.toString());
      if (response.statusCode == 200) {
        print('Connection OK');
        final respStr = await response.stream.bytesToString();
        // print(
        //   jsonDecode(respStr),
        // );
        var body = jsonDecode(respStr);
        
        ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Token : ${body['data']['access_token']}")));

        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setString("login", body['data']['access_token']);
        
        // print(pref.getString('login'));
        // Navigator.push(
        //       context, MaterialPageRoute(builder: (context) => HomePageScreen()));
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => BottomNavigation(),
        )
        );

        // print("This is the Status Code$respStr");
        // var encoded = json.decode(respStr);

        // print(encoded['status']);
        // print('This is the userId${encoded['data']['user_id']}');

      }else {
        print('Connection Failed');
        print("Email atau password tidak tepat");
        ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Email atau password Kurang tepat")));
      }
    
    } catch (error) {
      print(error);
      
    }  
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Email atau password tidak boleh kosong")));
    }
    
  }

  // REQUEST MENGGUNAKAN HTTP
  
  // Future<LoginResult> login() async{

  //   // var response = await http.post(Uri.parse("https://reqres.in/api/login"),
  //   String apiUrl = "https://reqres.in/api/login";

  //   var apiResult = await http.post(Uri.parse(apiUrl), body: {"email": emailController.text, "password": passwordController.text});
  //   var jsonObject = json.decode(apiResult.body);

  //   // print(jsonObject['token']);
  //   // print (jsonObject[data][user][name]);
  //   return LoginResult.createPostResult(jsonObject);
  // }

  //  ////// For testing with reqres.in with facotory

  // 'email': emailController.text.toString(),             ////// For testing with reqres.in
            // 'password': passwordController.text.toString()        ////// For testing with reqres.in
            // 'email': 'eve.holt@reqres.in',
            // 'password': 'cityslicka'
            // 'email': 'asdqwe@gmail.com',
            // 'password': 'asdqwe123'



  // Future<void> login() async {
  //   if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
  //     var response = await http.post(
  //          Uri.parse("http://api.gunma.my.id/api/v1/login-user"), 
  //         body: jsonEncode({   
  //           // 'email': emailController.text.toString(),             ////// For testing with reqres.in
  //           // 'password': passwordController.text.toString()     
  //           'email': 'yoan@gmail.com',
  //           'password': 'yoan123456'
  //         })
  //     );  
  //     if (response.statusCode == 200) {
  //       print("berhasil Login"); 
  //       print(response.body);
  //       var body = jsonDecode(response.body);
  //       // print(response.statusCode);
  //       // print(response.body);
  //       // print("Login Token " + ${body['data']['access_token']});
  //       // print('Token : ' + response.body);   
        

  //       // print("Token : " + userData.access_token.toString());
  //       // print(body['token']);   ////// For testing with reqres.in
        
  //       // print("Token : ${body['token']}" );   
  //       //  
  //       // print("Token : ${body['data']['access_token']}" );   

  //       // ScaffoldMessenger.of(context).showSnackBar(
  //       //     SnackBar(content: Text("Token : ${body['data']['access_token']}")));

  //       // SharedPreferences pref = await SharedPreferences.getInstance();
  //       // await pref.setString("login", body['data']['access_token']);

  //       //  Navigator.push(
  //       //     context, MaterialPageRoute(builder: (context) => HomePageScreen()));

  //       /////////////////////////////////////////////////////////////////////////  MUST BE UNCOMMENT
  //       // Navigator.of(context).pushReplacement(MaterialPageRoute(
  //       //   builder: (context) => ProfileSceen(),
  //       // )
  //       // );

  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(content: Text("status code not 200")));
  //           print(response.statusCode);
  //           // print("invalid Credentials");
  //           // print("\n\n");
  //           // print(emailController.text);
  //           // print(passwordController.text);
  //           // print("\n\n");
  //     }
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text("email atau password tidak boleh kosong")));
  //   }
  // }
}
