import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gunma/constants.dart';
import 'package:gunma/models/Space.dart';

class SpaceCard extends StatelessWidget {

  // const SpaceCard({ Key? key }) : super(key: key);
  
  final Space space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container (
            height: 155,
            width: 110,
            child: 
            Stack(
              children: [
                Image.asset(space.imageUrl, fit: BoxFit.cover,),
               
                // city.isPopuler ? 
                Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(color: kPurple, 
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                          )                     
                        ),                     
                        child: 
                        Center(
                          child: 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/star.png', 
                                height: 15, 
                                width: 30,
                              ),
                              Text("4/5", 
                              style: 
                              TextStyle(
                                color: bWhite,
                                fontSize: 14, 
                                ),
                                ),
                            ],
                          )
                          
                        ),
                        
                      ),
                    ) 
                    // : Container(), 
              ],
            ),
          ),
        ),

        SizedBox(width: 20,), 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Text(
                    space.title, 
                  style: 
                  TextStyle(
                    color: bDarkText,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                   SizedBox(height: 5,),
       
                  Text('Description : ', 
                  style: 
                  TextStyle(
                    color: bGrey, 
                    fontSize: 13
                    , fontWeight: FontWeight.bold),
                  ),
                  Text(space.description, 
                  style: 
                  TextStyle(
                    color: bDarkText, 
                    fontSize: 13
                    , fontWeight: FontWeight.w600),
                  ),
                   /////////////////////////////////////////      WITH TET RICH
                  SizedBox(height: 5,),
                  Text.rich(
                    TextSpan(
                      text: 'Category    : ', style: TextStyle(color: bGrey, fontSize: 13, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: space.category, style: TextStyle(color: bDarkText, fontSize: 13, fontWeight: FontWeight.w600)
                        ),
                      ] 
                    ),
                  ),
                        /////////////////////////////////////////
                        ///
                SizedBox(height: 5,),
                Text.rich(
                    TextSpan(
                      text: 'Close Reg  : ', style: TextStyle(color: bGrey, fontSize: 13, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: space.regDate, style: TextStyle(color: bDark, fontSize: 13, fontWeight: FontWeight.w600)
                        ),
                      ] 
                    ),
                  ),
                SizedBox(height: 5,),
                Text.rich(
                    TextSpan(
                      text: 'Period         : ', style: TextStyle(color: bGrey, fontSize: 13, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: space.period, style: TextStyle(color: bDark, fontSize: 13, fontWeight: FontWeight.w600)
                        ),
                      ] 
                    ),
                  ),

              ],
          // ),
        ),
        SizedBox(height: 50,),
        // Column()
  
      ],
    );
  }
}