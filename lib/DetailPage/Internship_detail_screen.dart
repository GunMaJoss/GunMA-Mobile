import 'package:flutter/material.dart';
import 'package:gunma/DetailPage/components/divider.dart';
import 'package:gunma/models/Internship.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';
import 'package:gunma/constants.dart';

class InternshipDetailScreen extends StatelessWidget {
  // const DetailScreen({ Key? key }) : super(key: key);

  final Internship intern;

  InternshipDetailScreen(this.intern);
  
  @override
  Widget build(BuildContext context) {

    launchUrl(String url) async{
      if (await canLaunch(url)){
        launch(url);
      }
      else{
        throw(url);
      }
    } 
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(height: 60),
                Container(
                  width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                        ),
                        color: bWhite,
                        ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 260,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFC8C5C5)),
                        borderRadius: BorderRadius.circular(20),
                          color: bWhite,
                          ),
                      child: Padding(
                      padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      ),
                      child: Row(
                        children: [
                            Column(                         
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15),
                                
                                Padding(
                                  padding: const EdgeInsets.only(left: 80.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      intern.imageUrl,
                                      width: 140,
                                        height: 183,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text('Posted by', style: TextStyle(fontSize: 14, color: Color(0xFF000000)), ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Container(
                                      width: 33.0,
                                      height: 33.0,
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                              fit: BoxFit.fill,
                                              image: new NetworkImage(
                                                  'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/08/19/3796772896.jpg')
                                          )
                                      ),                                       
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [                                      
                                        SizedBox(height: 5, width: 10),
                                        Text(intern.postedBy, style: TextStyle(fontSize: 12, color: Color(0xFF4C4C4C)),),      
                                        SizedBox(height: 5,),
                                        Text(intern.email, style: TextStyle(fontSize: 11, color: Color(0xff929090)), ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                HorizontalDivider(),
                                SizedBox(height: 10,),
                                Text('Program Name', style: TextStyle(fontSize: 12, color: Color(0xFF5A5757), fontWeight: FontWeight.bold), ),
                                SizedBox(height: 8,),
                                Text(intern.programName, style: TextStyle(fontSize: 12, color: Color(0xFF000000), fontWeight: FontWeight.bold),),            
                                SizedBox(height: 10,),
                                HorizontalDivider(),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset('assets/images/icon_schedule.png', height: 14, width: 14,),
                                    SizedBox(width: 10,),
                                     Text('Internship Schedule', style: TextStyle(fontSize: 12, color: Color(0xFF000000), fontWeight: FontWeight.bold),),        
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Duration', style: TextStyle(fontSize: 9, color: Color(0xFFB7B5B5), fontWeight: FontWeight.bold),),
                                        SizedBox(height: 5,),
                                        Text(intern.duration.toString() + " Month", style: TextStyle(fontSize: 10, color: Color(0xFF4C4C4C), fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    SizedBox(width: 10,),                                
                                    Container(
                                      width: 0,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(width: 1.0, color: Color(0xFFE4E4E4)),
                                        ),
                                      
                                      ),
                                    ),               
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Start', style: TextStyle(fontSize: 9, color: Color(0xFFB7B5B5), fontWeight: FontWeight.bold),),
                                        SizedBox(height: 5,),
                                        Text('-', style: TextStyle(fontSize: 10, color: Color(0xFF4C4C4C), fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      width: 0,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(width: 1.0, color: Color(0xFFE4E4E4)),
                                        ),                                  
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Close Registration', style: TextStyle(fontSize: 9, color: Color(0xFFB7B5B5), fontWeight: FontWeight.bold),),
                                        SizedBox(height: 5,),
                                        Text(intern.closeRegistration.toString(), style: TextStyle(fontSize: 10, color: Color(0xFF4C4C4C), fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),                                                                                                          
                                Container(
                                  width: 300,
                                  height: 0,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1.0, color: Color(0xFFE5DCDC)),
                                    ),
                                   
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset('assets/images/icon_location.png', height: 15, width: 15,),
                                    SizedBox(width: 10,),
                                     Text('Location', style: TextStyle(fontSize: 9, color: Color(0xFF000000), fontWeight: FontWeight.bold),),        
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text(intern.location_id.toString(), style: TextStyle(fontSize: 12, color: Color(0xFF4C4C4C), fontWeight: FontWeight.normal), ),
                                SizedBox(height: 10,),
                                HorizontalDivider(),    
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset('assets/images/icon_description.png', height: 14, width: 14,),
                                    SizedBox(width: 10,),
                                     Text('Description', style: TextStyle(fontSize: 12, color: Color(0xFF000000), fontWeight: FontWeight.bold),),        
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  width:300,
                                  // height:70,
                                  child: Text(intern.description,
                                    style: TextStyle(fontSize: 12, 
                                    color: Color(0xFF4C4C4C), 
                                    fontWeight: FontWeight.normal),
                                    overflow: TextOverflow.ellipsis,
                                    // maxLines: 40,
                                  ),
                                ),
                                 
                                SizedBox(height: 10,),
                                HorizontalDivider(),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset('assets/images/icon_benefit.png', height: 14, width: 14,),
                                    // Icon(Icons.beenhere_rounded, color: bBlack,),
                                    SizedBox(width: 10,),
                                     Text('Benefit', style: TextStyle(fontSize: 12, color: Color(0xFF000000), fontWeight: FontWeight.bold),),        
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  width:300,
                                  child: Text(intern.benefit, 
                                  style: TextStyle(fontSize: 12, 
                                  color: Color(0xFF4C4C4C), 
                                  fontWeight: FontWeight.normal, ),
                                  overflow: TextOverflow.ellipsis,
                                  // maxLines: 40, 
                                  ),
                
                                  ),
                                SizedBox(height: 10,),
                                Container(
                                  width: 300,
                                  height: 0,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1.0, color: Color(0xFFE5DCDC)),
                                    ),
                                   
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset('assets/images/icon_requirement.png', height: 14, width: 14,),
                                    SizedBox(width: 10,),
                                     Text('Requirements', style: TextStyle(fontSize: 12, color: Color(0xFF000000), fontWeight: FontWeight.bold),),        
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  width: 300,
                                  child: Text(intern.requirement, 
                                  style: TextStyle(fontSize: 12, 
                                  color: Color(0xFF4C4C4C), 
                                  fontWeight: FontWeight.normal),
                                  overflow: TextOverflow.ellipsis,
                                  // maxLines: 40,
                                  )
                                  ),
                                SizedBox(height: 10,),  
                                HorizontalDivider(),                       
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset('assets/images/icon_requirement.png', height: 14, width: 14,),
                                    SizedBox(width: 10,),
                                     Text('Salary', style: TextStyle(fontSize: 12, color: Color(0xFF000000), fontWeight: FontWeight.bold),),        
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  
                                  width: 300,
                                  child: Text(    
                                  intern.pay ==  '1' ? "Paid" : "Unpaid", 
                                  style: TextStyle(fontSize: 12, 
                                  color: Color(0xFF4C4C4C), 
                                  fontWeight: FontWeight.normal),
                                  overflow: TextOverflow.ellipsis,
                                  // maxLines: 40,
                                  )
                                  ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset('assets/images/icon_requirement.png', height: 14, width: 14,),
                                    SizedBox(width: 10,),
                                    Text('Cara Kerja', style: TextStyle(fontSize: 12, color: Color(0xFF000000), fontWeight: FontWeight.bold),),        
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  width: 300,
                                  child: Text(intern.work == '1' ? "Work From Home" : "Work From Office", 
                                  style: TextStyle(fontSize: 12, 
                                  color: Color(0xFF4C4C4C), 
                                  fontWeight: FontWeight.normal),
                                  overflow: TextOverflow.ellipsis,
                                  // maxLines: 40,
                                  )
                                  ),
                                // SizedBox(height: 10,),
                                // SizedBox(height: 10,),
                                HorizontalDivider(),               
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Image.asset('assets/images/icon_description.png', height: 14, width: 14,),
                                    SizedBox(width: 10,),
                                     Text('fasilitas training', style: TextStyle(fontSize: 12, color: Color(0xFF000000), fontWeight: FontWeight.bold),),        
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  width:300,
                                  // height:70,
                                  child: Text(intern.description,
                                    style: TextStyle(fontSize: 12, 
                                    color: Color(0xFF4C4C4C), 
                                    fontWeight: FontWeight.normal),
                                    overflow: TextOverflow.ellipsis,
                                    // maxLines: 40,
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 24, 
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(width: 25,),
                                        Image.asset('assets/images/icon_share.png', height: 20, width: 20,),
                                        // SizedBox(width: 30,),
                                        // InkWell(
                                        //   onTap: (){
                                        //     launchUrl('https://pub.dev/packages/url_launcher/example');
                                        //   }, 
                                          // child: Padding(
                                          //   padding: const EdgeInsets.all(24.0),
                                        //    child:  
                                        Container(
                                                alignment: Alignment.center,
                                                margin: EdgeInsets.symmetric(
                                                  horizontal: 24,
                                                ),
                                                height: 35,
                                                width: 170,
                                                child: RaisedButton( 
                                                  onPressed: () async {
                                                    await launch(intern.registrationLink);
                                                  },
                                                  color: kPurple,
                                                  shape: RoundedRectangleBorder(
                                                     borderRadius: BorderRadius.circular(15),
                                                  ),
                                                  child: Text('Register Now', style: TextStyle(fontWeight: FontWeight.bold, color: bWhite, fontSize: 20), ),                                                  
                                                ),
                                                // margin: EdgeInsets.symmetric(horizontal: 23),
                                                // decoration: BoxDecoration(
                                                //   color: kPurple,
                                                //   borderRadius: BorderRadius.circular(23),
                                                // ),
                                                // child: Text('Register', style: TextStyle(fontWeight: FontWeight.bold, color: bWhite, fontSize: 20), ),

                                        ),               
                                      ],
                                    ),
                                    
                                  ),
                                  
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                            
                          // ),
                        ],
                      ),
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),

              ],
            ),
            Container(
              height: 3,
              width: MediaQuery.of(context).size.width,
              color: bWhite,

            ),
            Container(
              height: 52,
              color: kPrimaryColor,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  // vertical: 10,
                  horizontal: 30
                ),
                child: 
                
                Row(
                 
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context
                        );
                      },  
                      child: 
                      Image.asset('assets/images/back_icon.png', width: 15,
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 59.0),
                        child: Text('Internship Detail', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: bWhite)),
                      ),
                    // Image.asset('assets/images/icon_love.png', width: 40,),
                  ],
                ),
              ),
            ),

          ],
        ),

      ),
    );
  }

  
}
