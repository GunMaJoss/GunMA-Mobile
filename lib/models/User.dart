
class User {
  
  final String imagePath;
  final String name;
  final String email;
  final String description;
  final String address;
  final String phone;
  
  const User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.description,
    required this.address,
    required this.phone,   
  });

  User copy({
    String? imagePath,
    String? name,
    String? email,
    String? description,
    String? address,
    String? phone,
    // bool? isDarkMode,
  }) =>
      User(
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        email: email ?? this.email,
        description: description ?? this.description, 
        address: address ?? this.address,  
        phone: phone ?? this.phone,
        
      );

  static User fromJson(Map<String, dynamic> json) => User(
        imagePath: json['imagePath'],
        name: json['name'],
        email: json['email'],
        description: json['description'],
        address: json['address'],
        phone: json['phone'],
        // isDarkMode: json['isDarkMode'],
      );

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
        'name': name,
        'email': email,
        'description':  description,
        'address': address,
        'phone': phone,
        // 'isDarkMode': isDarkMode,
      };

  // Space.fromJson(json) {
  //   id = json['id'];
  //   location_id = json['location_id'];
  //   image_id = json['image_id'];
  //   user_id = json['user_id'];
  //   tag_id = json['tag_id'];
  //   programName = json['programName'];
  //   description = json['description'];
  //   benefit = json['benefit'];
  //   requirement = json['requirement'];
  //   registrationLink = json['registrationLink'];
  //   isOpen = json['isOpen'];
  //   duration = json['duration'];
  //   closeRegistration = json['closeRegistration'];
  //   // openRegistration = json['openRegistration'];
  //   created_at = json['created_at'];
  //   updated_at = json['updated_at'];
  // }

}