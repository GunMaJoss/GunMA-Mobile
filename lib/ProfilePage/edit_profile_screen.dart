import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gunma/components/appbar_widget.dart';
import 'package:gunma/components/button_widget.dart';
import 'package:gunma/Widgets/Profile_Card.dart';
import 'package:gunma/components/text_field_widget.dart';
import 'package:gunma/models/User.dart';
import 'package:gunma/utils/user_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late User user;  
  // User user = UserPreferences.myUser; 
  
   @override
  void initState() {
    super.initState();

    user = UserPreferences.getUser();
  }

  @override
  Widget build(BuildContext context) => 
          Builder(
          builder: (context) => Scaffold(
            appBar: buildAppBar(context),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              physics: BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 10),
                ProfileWidget(
                  imagePath: user.imagePath,
                  isEdit: true,
                  onClicked: () async {
                    final image = await ImagePicker()
                        .getImage(source: ImageSource.gallery);

                    if (image == null) return;

                    final directory = await getApplicationDocumentsDirectory();
                    final name = basename(image.path);
                    final imageFile = File('${directory.path}/$name');
                    final newImage =
                        await File(image.path).copy(imageFile.path);

                    setState(() => user = user.copy(imagePath: newImage.path));
                  },
                ),
                const SizedBox(height: 10),
                TextFieldWidget(
                  label: 'Full Name',
                  text: user.name,
                  onChanged: (name) => user = user.copy(name: name), 
                  // onChanged: (name){}, 
                ),
                const SizedBox(height: 10),
                TextFieldWidget(
                  label: 'Email',
                  text: user.email,
                  onChanged: (email) => user = user.copy(email: email),  
                  // onChanged: (email) {},  
                ),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    label: 'Description',
                    text: user.description,
                    maxLines: 5,
                  onChanged: (description) => user = user.copy(description: description),
                    // onChanged: (description),
                ),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    label: 'Address',
                    text: user.address,
                    maxLines: 1,
                  onChanged: (address)  => user = user.copy(address: address),
                  // onChanged: (address) {},
                ),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    label: 'Phone',
                    text: user.phone,
                    maxLines: 1,
                    onChanged: (phone) => user = user.copy(phone: phone),
                    // onChanged: (phone) {},
                    
                ),
                  const SizedBox(height: 10), 
                //  const SizedBox(height: 24),
                ButtonWidget(
                  text: 'Save',
                  onClicked: () {
                    UserPreferences.setUser(user);
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(height: 10), 
              ],
            ),
          ),
        );
      
}