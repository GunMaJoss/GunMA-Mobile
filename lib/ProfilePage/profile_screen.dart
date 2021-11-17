import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gunma/ProfilePage/edit_profile_screen.dart';
import 'package:gunma/Widgets/Profile_Card.dart';
// import 'package:gunma/ProfilePage/edit_profile_screen.dart';
// import 'package:gunma/Widgets/Profile_Card.dart';
// import 'package:gunma/components/appbar_widget.dart';
import 'package:gunma/models/DetailUser.dart';
// import 'package:gunma/models/User.dart';
// import 'package:gunma/components/profile_widget.dart';
import 'package:http/http.dart' as http;
import 'package:gunma/constants.dart';
// import 'package:gunma/models/User.dart';
// import 'package:gunma/utils/user_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  // const ProfileSceen({ Key? key }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  
  @override
  Widget build(BuildContext context){
        return Scaffold(    
            body: FutureBuilder<User>(
              future: User.fetchUser(),
              builder: (context, orang) {
                if(orang.connectionState == ConnectionState.done){
                  return ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        // ProfileWidget(
                        //   imagePath: 'assets/image/FotoWajah.jpeg',
                        //   // imagePath: 
                        //   onClicked: () async {
                        //     await Navigator.of(context).push(
                        //       MaterialPageRoute(builder: (context) => EditProfilePage()),
                        //     );
                        //     setState(() {});
                        //   },
                        // ),
                        SizedBox(
                          height: 24,
                        ),
                        buildName(orang.data),
                        SizedBox(
                          height: 20,
                        ),               
                        buildEmail(orang.data),
                        SizedBox(
                          height: 24,
                        ),
                        buildAddress(orang.data),
                        SizedBox(
                          height: 24,
                        ),
                        buildPhone(orang.data),
                        SizedBox(
                          height: 24, 
                        ),
                        buildDescription(orang.data),
                        SizedBox(
                          height: 24,
                        ),
                      ],
                    );  
                }
                else{
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }               
              }
            ),
    );
  }

Widget buildName(User? user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama',
              style: TextStyle(fontSize: 14, color: Color(0xff737373)),
            ),
            const SizedBox(height: 10),
            Container(
              height: 36,
              width: 328,
              padding: EdgeInsets.only(top: 5, left: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffDCD7D7),
                  width: 0.2,
                ),
              ),
              child: Text(
                user != null ? user.name : "",
                style: TextStyle(fontSize: 15, height: 1.4),
              ),
            ),
          ],
        ),
      );
  Widget buildEmail(User? user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: TextStyle(fontSize: 14, color: Color(0xff737373)),
            ),
            const SizedBox(height: 10),
            Container(
              height: 36,
              width: 328,
              padding: EdgeInsets.only(top: 5, left: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffDCD7D7),
                  width: 0.2,
                ),
              ),
              child: Text(
                
                user!= null ? user.email : "",
                style: TextStyle(fontSize: 15, height: 1.4),
              ),
            ),
          ],
        ),
      );

  Widget buildAddress(User? user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: TextStyle(fontSize: 14, color: Color(0xff737373)),
            ),
            const SizedBox(height: 10),
            Container(
              height: 36,
              width: 328,
              padding: EdgeInsets.only(top: 5, left: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffDCD7D7),
                  width: 0.2,
                ),
              ),
              child: Text(
                 user!= null ? user.address.toString() : "",
                style: TextStyle(fontSize: 15, height: 1.4),
              ),
            ),
          ],
        ),
      );

  Widget buildPhone(User? user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Phone',
              style: TextStyle(fontSize: 14, color: Color(0xff737373)),
            ),
            const SizedBox(height: 10),
            Container(
              height: 36,
              width: 328,
              padding: EdgeInsets.only(top: 5, left: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffDCD7D7),
                  width: 0.2,
                ),
              ),
              child: Text(
                // user!.userId.toString(),
                user!= null ? user.phone.toString() : "",
                style: TextStyle(fontSize: 15, height: 1.4),
              ),
            ),
          ],
        ),
      );
  Widget buildDescription(User? user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: TextStyle(fontSize: 14, color: Color(0xff737373)),
            ),
            const SizedBox(height: 10),
            Container(
              height: 130,
              width: 328,
              padding: EdgeInsets.only(top: 5, left: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffDCD7D7),
                  width: 0.2,
                ),
              ),
              child: Text(
                user!= null ? user.description.toString() : "",
                style: TextStyle(fontSize: 15, height: 1.4),
              ),
            ),
          ],
        ),
      );
}
