import 'package:flutter/material.dart';
import 'package:gunma/DetailPage/Internship_detail_screen.dart';
import 'package:gunma/HomePage/components/background.dart';
import 'package:gunma/HomePage/components/bottom_navigation_bar.dart';
import 'package:gunma/Login/login_screen.dart';
import 'package:gunma/ProfilePage/profile_screen.dart';
import 'package:gunma/Providers/Internship_providers.dart';
import 'package:gunma/Widgets/City_Card.dart';
import 'package:gunma/Widgets/Internship_Card.dart';
import 'package:gunma/components/button_navbar_item.dart';
// import 'package:gunma/components/button_setting.dart';
import 'package:gunma/components/rounded_input_field.dart';
import 'package:gunma/constants.dart';
import 'package:gunma/models/City.dart';
import 'package:gunma/models/Internship.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreen createState() => _HomePageScreen();
}

class _HomePageScreen extends State<HomePageScreen> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<InternshipProvider>(
      create: (context) => InternshipProvider(),
      child: Scaffold(
            body: SafeArea(
              child: Container(
                child: ListView(
                  children: [
                    Background(
                      child: Container(
                        alignment: Alignment.center,
                        child: new Column(
                          children: <Widget>[
                            // ignore: deprecated_member_use
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return HomePageScreen();
                                    },
                                  ),
                                ),
                              },
                              color: Color(0xff3E83A8),
                              padding: EdgeInsets.only(left: 310.0, top: 20),
                              child: Column(
                                children: [
                                  Icon(Icons.settings,
                                      color: Color(0xffFFFFFF)),
                                ],
                              ),
                            ),
                            SizedBox(height: 60),
                            new Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "   Selamat datang, Yuk cari program \n   Internship untuk kamu!",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: lightWhite.withOpacity(1)),
                              ),
                            ),
                            SizedBox(height: 20),
                            RoundedInputField(
                              hintText: "Cari program internship",
                              onChanged: (Value) {},
                            ),
                            // SizedBox(height: 20),
                            // new Container(
                            //   alignment: Alignment.center,
                            //   width: 100,
                            //   height: 45,
                            //   child: OutlinedButton(
                            //     onPressed: null,
                            //     style: ButtonStyle(
                            //       shape: MaterialStateProperty.all(
                            //         RoundedRectangleBorder(
                            //           borderRadius: BorderRadius.circular(18.0),
                            //           side: BorderSide(color: bWhite)
                            //         )
                            //       ),
                            //     ),
                            //     child: const Text("Internship", style: TextStyle(color: bWhite,)),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),

                    ////////////////////////////////////////////////// EXPLORE NOW
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Explore Internship on Your Country",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Color(0xff252525)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      child: Text(
                        "Cari tempat magang di kota terbaik di Indonesia",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Color(0xff484949)),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 140,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            width: 16,
                          ),
                          CityCard(
                            City(
                              id: 1,
                              name: 'Surabaya',
                              imageUrl: 'assets/images/sby.png',
                              isPopuler: false,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CityCard(
                            City(
                              id: 2,
                              name: 'Jakarta',
                              imageUrl: 'assets/images/jkt.png',
                              isPopuler: true,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CityCard(
                            City(
                              id: 3,
                              name: 'Yogyakarta',
                              imageUrl: 'assets/images/yogya.png',
                              isPopuler: false,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CityCard(
                            City(
                              id: 4,
                              name: 'Bandung',
                              imageUrl: 'assets/images/bandung.png',
                              isPopuler: false,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Newest Update",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        left: 24,
                      ),
                      child:
                        Consumer<InternshipProvider>(
                        builder: (context, provider, _) => FutureBuilder(
                          future: provider.getRecommendedSpaces(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              List<Internship>? data = snapshot.data as List<Internship>?;
                              return Column(
                                children: data!
                                    .map((item) => InternshipCard(item))
                                    .toList(),
                              );
                            }
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          )
    );
  }
}
