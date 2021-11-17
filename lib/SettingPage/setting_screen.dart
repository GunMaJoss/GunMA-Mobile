import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gunma/Login/login_screen.dart';
import 'package:gunma/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class SettingScreen extends StatefulWidget {
  const SettingScreen({ Key? key }) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
   void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
      builder: (context) => LoginScreen())
    ,(Route<dynamic> route) => false);
    
  }
  
  Future<void>delete(BuildContext context) async {
              
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("TOKEN : " + prefs.getString('login').toString());
    
    try {
    final postResponse = await http.post(
      // Uri.parse("https://reqres.in/api/users/2"),
      Uri.parse("http://api.gunma.my.id/api/delete"),
      
      // Send authorization headers to the backend.
      headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + prefs.getString('login')!,
        // HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
      },
    );
    // var responseJson = jsonDecode(postResponse.body);
    // var userId = (responseJson as Map<String, dynamic>)['data']['id'];
    // print("USER ID : " + userId.toString());
 
       if (postResponse.statusCode == 200) {
          
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("User Deleted")));

          Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => LoginScreen(),
          )
          );       

       }else{
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Connection Failed")));
       }

    } catch (error) {
      print(error);
    }
  }  

  @override
  Widget build(BuildContext context) {
  //  Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Settings'), centerTitle: true, 
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_arrow_left_rounded ),
        ),
      ),
      body: 
      SafeArea(       
        child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: ListView(
                children: [
                  SizedBox(height: 30),
                  Text("Settings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,
                    shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 1.0,
                                color: bGrey,
                              ),
                    ], 
                  ),),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Notification", style: TextStyle(fontSize: 14),),
                          SizedBox(width: 220),
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_right_rounded ),
                            onPressed: (){
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
                            }
                          )
                        ],
                      ),
                     Divider(
                      height: 0.1,
                      thickness: 1,                     
                      endIndent: 20,
                    ),     

                      // SizedBox(height: 5),
                      Row(
                        children: [
                          Text("Notification", style: TextStyle(fontSize: 14),),
                          SizedBox(width: 220),
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_right_rounded ),
                            onPressed: (){
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
                            }
                          )
                        ],
                      ),
                      Divider(
                      height: 0.1,
                      thickness: 1,                     
                      endIndent: 20,
                    ),
                      Row(
                        children: [
                          Text("Notification", style: TextStyle(fontSize: 14),),
                          SizedBox(width: 220),
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_right_rounded ),
                            onPressed: (){
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
                            }
                          )
                        ],
                      ),
                      Divider(
                      height: 0.1,
                      thickness: 1,                     
                      endIndent: 20,
                    ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text("Support", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,
                    shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 1.0,
                                color: bGrey,
                              ),
                    ], 
                  ),),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("About App", style: TextStyle(fontSize: 14),),
                          SizedBox(width: 225),
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_right_rounded ),
                            onPressed: (){
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
                            }
                          )
                        ],
                      ),
                     Divider(
                      height: 0.1,
                      thickness: 1,                     
                      endIndent: 20,
                    ),     

                      // SizedBox(height: 5),
                      Row(
                        children: [
                          Text("Help & Support", style: TextStyle(fontSize: 14),),
                          SizedBox(width: 197),
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_right_rounded ),
                            onPressed: (){
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
                            }
                          )
                        ],
                      ),
                      Divider(
                      height: 0.1,
                      thickness: 1,                     
                      endIndent: 20,
                    ),
                      Row(
                        children: [
                          Text("Privacy & Policy", style: TextStyle(fontSize: 14),),
                          SizedBox(width: 193),
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_right_rounded ),
                            onPressed: (){
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
                            }
                          )
                        ],
                      ),
                      Divider(
                      height: 0.1,
                      thickness: 1,                     
                      endIndent: 20,
                    ),
                    Row(
                        children: [
                          Text("Term & Condition", style: TextStyle(fontSize: 14),),
                          SizedBox(width: 182),
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_right_rounded ),
                            onPressed: (){
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
                            }
                          )
                        ],
                      ),
                      Divider(
                      height: 0.1,
                      thickness: 1,                     
                      endIndent: 20,
                    ),
                    Row(
                        children: [
                          Text("Feedback & Suggestion", style: TextStyle(fontSize: 14),),
                          SizedBox(width: 142),
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_right_rounded ),
                            onPressed: (){
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
                            }
                          )
                        ],
                      ),
                      Divider(
                      height: 0.1,
                      thickness: 1,                     
                      endIndent: 20,
                    ),
                    Row(
                        children: [
                          Text("Log Out", style: TextStyle(fontSize: 14),),
                          SizedBox(width: 239),
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_right_rounded ),
                            onPressed: (){
                              logout();
                              
                            }
                          )
                        ],
                      ),
                      Divider(
                      height: 0.1,
                      thickness: 1,                     
                      endIndent: 20,
                    ),
                    Row(
                        children: [
                          Text("Delete Account", style: TextStyle(fontSize: 14, color: Colors.red),),
                          SizedBox(width: 192),
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_right_rounded, color: Colors.red),
                            onPressed: (){
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
                            }
                          )
                        ],
                      ),
                      Divider(
                      height: 0.1,
                      thickness: 1,                     
                      endIndent: 20,
                    ),
                    ],
                  ),
                ],
              ),
            ),
        )    
      ),  
            
    );
  }
}