import 'package:flutter/material.dart';
import 'package:gunma/constants.dart';


class HomePageScreen extends StatelessWidget {
  const HomePageScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(    
      body: SafeArea(
        child: Container(
          // child: Padding(
            // padding: EdgeInsets.symmetric(
            //   vertical: 24,
            //   horizontal: 24
            // ), 
            child: ListView(
              children: [
                Container(
                  child: 
                  Image.asset('assets/images/gunma_bgSplashScreen.png'),
                ),
                Text("Explore Now", 
                  style: 
                    TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24), 
                ),
                SizedBox(height: 10,),
                Text("don't be lazy for scolling", 
                  style: 
                    TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black.withOpacity(0.6)), 
                ),
                SizedBox(height: 50,),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Text("Popular City", 
                  style: regularPoppins.copyWith(
                    fontSize: 24
                    ),
                  )
                  
                  ),
                  
                // Positioned(
                //   child: 
                //   Image.asset('assets/images/gunma_setting.png', 
                //   width: 5, 
                //   height: 5,
                //   ),
                // ),
                // Positioned(
                //   child: 
                //   Image.asset('assets/images/Vector 59.png', 
                //   width: 5, 
                //   height: 5,
                //   ),
                // )
                             
              ],
            // ),
          ),
        ),
      ),
      
    );
  }
}