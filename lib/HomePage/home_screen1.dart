import 'package:flutter/material.dart';
import 'package:gunma/HomePage/components/background.dart';
import 'package:gunma/Widgets/City_Card.dart';
import 'package:gunma/Widgets/Space_Card.dart';
import 'package:gunma/components/button_navbar_item.dart';
// import 'package:gunma/components/button_setting.dart';
import 'package:gunma/components/rounded_input_field.dart';
import 'package:gunma/constants.dart';
import 'package:gunma/models/City.dart';
import 'package:gunma/models/Space.dart';

class HomePageScreen extends StatelessWidget {
  // const HomePageScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(    
      body: SafeArea(
        child: Container(
          // child: Padding(
          //   padding: EdgeInsets.symmetric(
          //     vertical: 24,
          //     horizontal: 24
          //   ),      
            child: ListView(            
              children: [
                Background(  child: 
                  Container(                  
                    alignment: Alignment.center,
                    child: new Column(
                        children: [                                          
                          new Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              // padding: new EdgeInsets.all(0.005),
                              icon: Image.asset('assets/images/Homepage_Setting_Icon.png'),
                              iconSize: 0.05,
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(height: 40),
                          new Container(
                            alignment: Alignment.center,
                            child: Text("   What Do You\n  Want To Find ?", 
                              style: 
                              TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: lightWhite.withOpacity(1)
                                ), 
                              ),
                          ),
                          SizedBox(height: 20),
                          // SizedBox(height: 10),
                          RoundedInputField(
                            hintText: "find it here",
                            onChanged: (Value) {},
                          ),
                          SizedBox(height: 20),
                          new Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 45,
                            child: OutlinedButton(
                              onPressed: null,
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: bWhite)
                                  )
                                ),
                              ),
                              child: const Text("Internship", style: TextStyle(color: bWhite,)),
                            ),
                          ), 
                        ],
                    ),
                  ),  
                  ),     
                       ////////////////////////////////////////////////// EXPLORE NOW      
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24
                  ), 
                    child: 
                    Text("Explore Your Country", 
                       style: 
                         TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 24), 
                    ),
                ),
                SizedBox(height: 2,),
                Padding(padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 24
                  ), 
                    child: 
                    Text("carilah pekerjaan terbaik bagimu", 
                       style: 
                         TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 15,
                           color: bGrey                         ),                          
                    ),
                ),     
                SizedBox(height: 10,),     

                ///////////////////////////////////////////////// POPULAR CITY                  
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 24
                  ),
                  child: Text("Popular Cities", 
                  style: regularPoppins.copyWith(
                    fontSize: 20, color: bDarkText
                    ),
                  )                  
                ),
                
                SizedBox(height: 10,),   
                Container(
                  height: 140,
                  // height: 120,
                  // width: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      
                      // CityCard(
                      //   City(
                      //     id: 1,
                      //     name: 'Jakarta',
                      //     ImageUrl: 'assets/images/sby.png'
                      //   ),
                      // ),
                      // SizedBox(width: 20,), 
                      SizedBox(width: 25,), 
                      CityCard(
                        City(
                          id: 1,
                          name: 'Surabaya',
                          imageUrl: 'assets/images/sby.png',
                          isPopuler: false,
                        ),
                      ),
                      SizedBox(width: 20,), 
                      CityCard(
                        City(
                          id: 2,
                          name: 'Jakarta',
                          imageUrl: 'assets/images/jkt.png',
                          isPopuler: true,
                        ),
                      ),
                      SizedBox(width: 20,),  
                      CityCard(
                        City(
                          id: 3,
                          name: 'Yogyakarta',
                          imageUrl: 'assets/images/yogya.png',
                          isPopuler: false,
                        ),
                      ),
                      SizedBox(width: 20,), 
                      CityCard(
                        City(
                          id: 4,
                          name: 'Bandung',
                          imageUrl: 'assets/images/bandung.png',
                          isPopuler: false,
                        ),
                      ),
                      SizedBox(width: 30,), 
                    ],
                  ),
                ),  
                SizedBox(height: 40,), 

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24
                  ), 
                    child: 
                    Text(" Closest RegistrationClosing Schedule", 
                       style: 
                         TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 15 ), 
                    ),
                ), 
                SizedBox(height: 40,), 
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24
                  ),
                  child: Column(
                    
                    children: [
                      
                      SpaceCard(
                        Space(
                          id: 1,
                          title: 'Cinema Internship',
                          imageUrl: 'assets/images/intern_ss.png',
                          description: 'Content of Desc',
                          category: 'category',
                          regDate: '12-08-2021',
                          period: '3 months', 

                            // String title;
                            // String imageUrl;
                            // String description;
                            // String category;
                            // String regDate;
                            // String period;
                        ),
                      ),
                      SizedBox(height: 20,), 
             
                      SpaceCard(
                          Space(
                          id: 2,
                          title: 'Dictio Internship',
                          imageUrl: 'assets/images/intern_dictio.jpg',
                          description: 'Content of Desc',
                          category: 'category',
                          regDate: '12-08-2021',
                          period: '3 months', 

                        ),
                      ),
                      SizedBox(height: 20,), 
                      SpaceCard(
                          Space(
                          id: 3,
                          title: 'Grapich Internship',
                          imageUrl: 'assets/images/intern_grapich.png',
                          description: 'Content of Desc',
                          category: 'category',
                          regDate: '12-08-2021',
                          period: '3 months', 

                        ),
                      ),
                      SizedBox(height: 20,), 
                      SpaceCard(
                        Space(
                          id: 4,
                          title: 'Assistance Internship',
                          imageUrl: 'assets/images/intern_assistant.png',
                          description: 'Content of Desc',
                          category: 'category',
                          regDate: '12-08-2021',
                          period: '3 months', 
                        ),
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 100,),
                // SizedBox(height: 50,),
              ],
            ),
          ),
        ),
        floatingActionButton:  Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width - (2 * 24),
                  margin: EdgeInsets.symmetric(horizontal: 23),
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(23),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    
                    ButtonNavbarItem(
                      imageUrl: 'assets/images/navbar_pHome.png',
                      isActive: true
                    ),
                    ButtonNavbarItem(
                      imageUrl: 'assets/images/navbar_Love.png',
                      isActive: false
                    ),
                    ButtonNavbarItem(
                      imageUrl: 'assets/images/navbar_Lonceng.png',
                      isActive: false
                    ),
                    ButtonNavbarItem(
                      imageUrl: 'assets/images/navbar_Account.png',
                      isActive: false
                    ),
                  ],
                ),    
                ),
                floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );     
    // );
  }
}