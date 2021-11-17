import 'package:flutter/material.dart';
import 'package:gunma/constants.dart';
import 'package:gunma/models/City.dart';

class CityCard extends StatelessWidget {
  // const CityCard({ Key? key }) : super(key: key);

  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
          height: 100,
          width: 140,
          color: Color(0xffE7E6E6),
          child: 
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    city.imageUrl,
                    width: 140,
                    height: 90,
                    fit: BoxFit.cover,           
                  ),
                  city.isPopuler ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(color: kPrimaryColor, 
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        )
                      
                      ),                     
                      child: 
                      Center(
                        child: 
                        Image.asset(
                          'assets/images/star.png', 
                          height: 15, 
                          width: 15,
                        )
                      ),
                      
                    ),
                  ) : Container(), 
                ],
              ),
              SizedBox(height: 10,),   
              Text(
                city.name,
                style: regularPoppins.copyWith(
                  fontSize: 16, color: bDarkText
                ),
                ),
            ],
          ),
      ),
    );
  }
}