// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class Internship {
  // final Map<String, dynamic> data;
  late int id; 
  late String postedBy;
  late String email;
  late String imageUrl;
  late String location_id;
  // late int image_id;
  late int user_id;
  late int tag_id;
  late String programName; 
  late String description;
  late String benefit;
  late String requirement;
  late String registrationLink;
  late int isOpen;
  late int duration;
  late String closeRegistration; 
  // late String openRegistration;
  late String created_at;
  late String updated_at;
  late String pay;
  late String work;
  // late String trainingSkill;
  
  Internship(u, {
    // required this.data,
    required this.id,
    required this.postedBy,
    required this.email,
    required this.imageUrl,
    required this.location_id,
    // required this.image_id,
    required this.user_id,
    required this.tag_id,
    required this.programName,   
    required this.description, 
    required this.benefit,
    required this.requirement,
    required this.registrationLink,
    required this.isOpen,
    required this.duration,
    required this.closeRegistration,
    // required this.openRegistration,
    required this.created_at,
    required this.updated_at,
    // required this.
    required this.pay,
    required this.work,
    // required this.trainingSkill,
  });

  Internship.fromJson(json) {
    id = json['id'];
    postedBy = json['user']['name'];
    email = json['user']['email'];
    imageUrl = json['imageUrl'];
    location_id = json['location']['locationName'];
    // image_id = json['image_id'];
    user_id = json['user_id'];
    tag_id = json['tag_id'];
    programName = json['programName'];
    description = json['description'];
    benefit = json['benefit'];
    requirement = json['requirement'];
    registrationLink = json['registrationLink'];
    isOpen = json['isOpen'];
    duration = json['duration'];
    closeRegistration = json['closeRegistration'];
    // openRegistration = json['openRegistration'];
    created_at = json['created_at'];
    updated_at = json['updated_at'];
    pay = json['isPaid'];
    work = json['isWfh'];
    // trainingSkill = json['trainingSkill'];
  }

}
 ////////////////////////////////////////////////////////////////////////////////////// BAGIAN BACK UP
// class Space {

//   late final Map<String, dynamic> data;
//   late final int id; 
//   late final int location_id;
//   late final int image_id;
//   late final int user_id;
//   late final int tag_id;
//   late final String programName; 
//   late final String description;
//   late final String benefit;
//   late final String requirement;
//   late final String registrationLink;
//   late final int isOpen;
//   late int duration;
//   late final String closeRegistration; 
//   // late String openRegistration;
//   late final String created_at;
//   late final String updated_at;

//   Space(
//       {
//       required this.data,
//       required this.id,
//       required this.location_id,
//       required this.image_id,
//       required this.user_id,
//       required this.tag_id,
//       required this.programName,   
//       required this.description, 
//       required this.benefit,
//       required this.requirement,
//       required this.registrationLink,
//       required this.isOpen,
//       required this.duration,
//       required this.closeRegistration,
//       // required this.openRegistration,
//       required this.created_at,
//       required this.updated_at,
      
//       });

//   factory Space.fromJson(Map<String, dynamic> json) {
//     return Space(
//       data: {
//         'id': json['id'],
//         'location_id': json['location_id'],
//         'image_id': json['image_id'],
//         'user_id': json['user_id'],
//         'tag_id': json['tag_id'],
//         'programName': json['programName'],
//         'description': json['description'],
//         'benefit': json['benefit'],
//         'requirement': json['requirement'],
//         'registrationLink': json['registrationLink'],
//         'isOpen': json['isOpen'],
//         'duration': json['duration'],
//         'closeRegistration': json['closeRegistration'],
//         'created_at': json['created_at'],
//         'updated_at': json['updated_at'],
//       },
//       name: json['name'],
//       capital: json['capital'],
//       population: json['population'],
//       area: json['area'],
//       nativeName: json['nativeName'],
//       region: json['region'],
//       flag: json['flag'],
//     );
//   }
// }