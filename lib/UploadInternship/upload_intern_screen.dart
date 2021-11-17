import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gunma/Login/login_screen.dart';
import 'package:gunma/UploadInternship/setting_upload.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'package:gunma/components/appbar_widget.dart';
import 'package:gunma/components/button_widget.dart';
import 'package:gunma/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UploadInternPage extends StatefulWidget {
  @override
  _UploadInternPageState createState() => _UploadInternPageState();
}

class _UploadInternPageState extends State<UploadInternPage> {
  // late User user;  
  // User user = UserPreferences.myUser;
  late String programName, isOpen, duration, closeRegistration, 
  locationName, benefit, description, requirements, 
  caraKerja, fasliitasTraining, registrationLink, imageUrl,
  tagName, isWfh, isPaid ; //salary 

  var programNameController =  TextEditingController();
  var isOpenController = TextEditingController();
  var durationController = TextEditingController();
  var closeRegistrationController = TextEditingController();
  var locationNameController = TextEditingController();
  var descriptionController = TextEditingController();
  var benefitController = TextEditingController();
  var requirementsController = TextEditingController();
  // var salaryController = TextEditingController();
  var caraKerjaController = TextEditingController();
  var fasilitasTrainingController = TextEditingController();
  var registrationLinkController = TextEditingController();
  var isWfhController = TextEditingController();
  var isPaidController = TextEditingController();
  var imageUrlController = TextEditingController();
  var tagNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Scaffold(
              appBar: AppBar(),
              body: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                physics: BouncingScrollPhysics(),
                children: [
                  const SizedBox(height: 10),
                  // InternshipWidget(
                  //   imagePath: '',
                  //   isEdit: true,
                  //   onClicked: () async {
                  //     final image = await ImagePicker()
                  //         .getImage(source: ImageSource.gallery);

                  //     if (image == null) return;

                  //     final directory = await getApplicationDocumentsDirectory();
                  //     final name = basename(image.path);
                  //     final imageFile = File('${directory.path}/$name');
                  //     final newImage =
                  //         await File(image.path).copy(imageFile.path);

                  //     // setState(() => user = user.copy(imagePath: newImage.path));
                  //   },
                  // ),
                  const SizedBox(height: 10),
                  Text(" Program Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10),
                  Container(
                        height:50,
                        decoration: BoxDecoration(
                          
                          color: Color(0xffFFFAFA),
                          border: Border.all(
                          color: bBlack,// set border color
                          width: 1.0),  
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: TextFormField(
                            controller: programNameController,
                            decoration: InputDecoration(
                              
                              hintText: "ex: Beswan Djarum", hintStyle: TextStyle(fontSize: 12), 
                              labelStyle: TextStyle(fontSize: 12),
                              border: InputBorder.none,
                              
                              // suffixIcon: Icon(Icons.person, color: Color(0xffA9A9A9),), 
                            ),
                             onSaved: (val) {
                                programName = val!;
                              },
                          ),
                        ),
                      ),
                  // TextFieldWidget(
                  //   label: 'Company Name',
                  //   // text: user.name,
                  //   text: '',
                  //   // onChanged: (name) => user = user.copy(name: name), 
                  //   onChanged: (value) => Container(),
                    
                  //   // onChanged: (name){}, 
                  // ),
                  const SizedBox(height: 10),
                  Text(" Duration (in month)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10),
                  Container(
                        height:50,
                        decoration: BoxDecoration(
                          
                          color: Color(0xffFFFAFA),
                          border: Border.all(
                          color: bBlack,// set border color
                          width: 1.0),  
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: TextFormField(
                            controller: durationController,
                            decoration: InputDecoration(
                              
                              hintText: "ex: 6", hintStyle: TextStyle(fontSize: 12), 
                              // labelStyle: TextStyle(fontSize: 12),
                              border: InputBorder.none,
                              
                              // suffixIcon: Icon(Icons.person, color: Color(0xffA9A9A9),), 
                            ),
                             onSaved: (val) {
                               duration = val!;
                              },
                          ),
                        ),
                      ),
                  // TextFieldWidget(
                  //   label: 'Company Email',
                  //   // text: user.email,
                  //   text: '',
                  //   // onChanged: (email) => user = user.copy(email: email),  
                  //   onChanged: (value) => Container(),
                  //   // onChanged: (email) {},  
                  // ),
                  const SizedBox(height: 10),
                  Text(" Description", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10),
                  Container(
                        height:50,
                        decoration: BoxDecoration(
                          
                          color: Color(0xffFFFAFA),
                          border: Border.all(
                          color: bBlack,// set border color
                          width: 1.0),  
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: TextFormField(
                            controller: descriptionController,
                            decoration: InputDecoration(
                              
                              hintText: "ex: beasiswa yang diselenggarakan Djarum super", hintStyle: TextStyle(fontSize: 12), 
                              border: InputBorder.none,
                              
                              // suffixIcon: Icon(Icons.person, color: Color(0xffA9A9A9),), 
                            ),
                             onSaved: (val) {
                                description = val!;
                              },
                          ),
                        ),
                      ),
                  //   TextFieldWidget(
                  //     label: 'Phone',
                  //     // text: user.phone,
                  //     text: '',
                  //     maxLines: 1,
                  //     // onChanged: (phone) => user = user.copy(phone: phone),
                  //     onChanged: (value) => Container(),
                  //     // onChanged: (phone) {},
                      
                  // ),
                  const SizedBox(height: 10),
                  Text(" Benefit", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10),
                  Container(
                        height:50,
                        decoration: BoxDecoration(
                          
                          color: Color(0xffFFFAFA),
                          border: Border.all(
                          color: bBlack,// set border color
                          width: 1.0),  
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: TextFormField(
                            controller: benefitController,
                            decoration: InputDecoration(
                              hintText: "ex: pengalaman", hintStyle: TextStyle(fontSize: 12), 
                              border: InputBorder.none,                           
                              // suffixIcon: Icon(Icons.person, color: Color(0xffA9A9A9),), 
                            ),
                             onSaved: (val) {
                                benefit = val!;
                              },
                          ),
                        ),
                      ),
                  //   TextFieldWidget(
                  //     label: 'Address',
                  //     // text: user.address,
                  //     text: '',
                  //     maxLines: 1,
                  //   // onChanged: (address)  => user = user.copy(address: address),
                  //   onChanged: (value) => Container(),
                  //   // onChanged: (address) {},
                  // ),
                  const SizedBox(height: 10),
                  Text(" Requirements", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10),
                  Container(
                        height:50,
                        decoration: BoxDecoration(
                          
                          color: Color(0xffFFFAFA),
                          border: Border.all(
                          color: bBlack,// set border color
                          width: 1.0),  
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: TextFormField(
                            controller: requirementsController,
                            decoration: InputDecoration(
                              
                              hintText: "ex: mahasiswa D4 Aktif", hintStyle: TextStyle(fontSize: 12), 
                              border: InputBorder.none,
                              
                              // suffixIcon: Icon(Icons.person, color: Color(0xffA9A9A9),), 
                            ),
                             onSaved: (val) {
                                requirements= val!;
                              },
                          ),
                        ),
                      ),
                  SizedBox(height: 10),
                  Text(" Link Registrasi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10),
                  Container(
                        height:50,
                        decoration: BoxDecoration(                       
                          color: Color(0xffFFFAFA),
                          border: Border.all(
                          color: bBlack,// set border color
                          width: 1.0),  
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: TextFormField(
                            controller: registrationLinkController,
                            decoration: InputDecoration(
                              hintText: "ex: link gform atau link pendaftaran", hintStyle: TextStyle(fontSize: 12), 
                              border: InputBorder.none,                           
                              // suffixIcon: Icon(Icons.person, color: Color(0xffA9A9A9),), 
                            ),
                             onSaved: (val) {
                                registrationLink = val!;
                              },
                          ),
                        ),
                      ),
                     SizedBox(height: 10),
                  Text(" Image Url", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10),
                  Container(
                        height:50,
                        decoration: BoxDecoration(
                          
                          color: Color(0xffFFFAFA),
                          border: Border.all(
                          color: bBlack,// set border color
                          width: 1.0),  
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: TextFormField(
                            controller: imageUrlController,
                            decoration: InputDecoration(
                              hintText: "ex: https://Poster-Internship", hintStyle: TextStyle(fontSize: 12), 
                              border: InputBorder.none,                           
                              // suffixIcon: Icon(Icons.person, color: Color(0xffA9A9A9),), 
                            ),
                             onSaved: (val) {
                                imageUrl = val!;
                              },
                          ),
                        ),
                      ),
                  SizedBox(height: 10),
                  Text(" City Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10),
                  Container(
                        height:50,
                        decoration: BoxDecoration(
                          
                          color: Color(0xffFFFAFA),
                          border: Border.all(
                          color: bBlack,// set border color
                          width: 1.0),  
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: TextFormField(
                            controller: locationNameController,
                            decoration: InputDecoration(
                              hintText: "ex: Surabaya", hintStyle: TextStyle(fontSize: 12), 
                              border: InputBorder.none,                           
                              // suffixIcon: Icon(Icons.person, color: Color(0xffA9A9A9),), 
                            ),
                             onSaved: (val) {
                                locationName = val!;
                              },
                          ),
                        ),
                      ),
                    SizedBox(height: 10),
                  Text(" Salary", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10),
                  Container(
                        height:50,
                        decoration: BoxDecoration(
                          
                          color: Color(0xffFFFAFA),
                          border: Border.all(
                          color: bBlack,// set border color
                          width: 1.0),  
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: TextFormField(
                            controller: isPaidController,
                            decoration: InputDecoration(
                              labelText: "'1' for 'Paid' & '0' for 'Unpaid'", labelStyle: TextStyle(fontSize: 12), 
                              border: InputBorder.none,                           
                              // suffixIcon: Icon(Icons.person, color: Color(0xffA9A9A9),), 
                            ),
                             onSaved: (val) {
                                isPaid = val!;
                              },
                          ),
                        ),
                      ),
                    SizedBox(height: 10),
                  Text(" Sistem Bekerja", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10),
                  Container(
                        height:50,
                        decoration: BoxDecoration(
                          
                          color: Color(0xffFFFAFA),
                          border: Border.all(
                          color: bBlack,// set border color
                          width: 1.0),  
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: TextFormField(
                            controller: isWfhController,
                            decoration: InputDecoration(
                              labelText: "'1' for 'WFH' & '0' for 'WFO'", labelStyle: TextStyle(fontSize: 12),
                              // hintText: "ex: '1' untuk WFH & '0' untuk WFO", hintStyle: TextStyle(fontSize: 12), 
                              border: InputBorder.none,                           
                              // suffixIcon: Icon(Icons.person, color: Color(0xffA9A9A9),), 
                            ),
                             onSaved: (val) {
                                isWfh = val!;
                              },
                          ),
                        ),
                      ),
                    SizedBox(height: 10),
                  Text(" Kategori Bidang", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10),
                  Container(
                        height:50,
                        decoration: BoxDecoration(
                          
                          color: Color(0xffFFFAFA),
                          border: Border.all(
                          color: bBlack,// set border color
                          width: 1.0),  
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: TextFormField(
                            controller: tagNameController,
                            decoration: InputDecoration(
                              labelText: "'1' system informasi, '2' kesehatan, '3' geologi" , labelStyle: TextStyle(fontSize: 12),
                              // hintText: "ex: '1' untuk WFH & '0' untuk WFO", hintStyle: TextStyle(fontSize: 12), 
                              border: InputBorder.none,                           

                            ),
                             onSaved: (val) {
                                tagName = val!;
                              },
                          ),
                        ),
                      ),
                  SizedBox(height: 10),
                  Text(" Close Registration", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10),

                  Container(
                      height:50,
                        decoration: BoxDecoration(
                          
                          color: Color(0xffFFFAFA),
                          border: Border.all(
                          color: bBlack,// set border color
                          width: 1.0),  
                          borderRadius: BorderRadius.circular(8),
                        ),
                        
                      child:Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                            controller: closeRegistrationController, //editing controller of this TextField
                            decoration: InputDecoration( 
                              // icon: Icon(Icons.calendar_today), //icon of text field
                              labelText: "Enter Date", labelStyle: TextStyle(fontSize: 12),
                              border: InputBorder.none, //label text of field
                            ),
                            
                            // readOnly: true,  //set it true, so that user will not able to edit text
                            onTap: () async { 
                              FocusScope.of(context).requestFocus(new FocusNode());
                              DateTime? pickedDate = await showDatePicker(
                                  context: context, initialDate: DateTime.now(),
                                  firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                  lastDate: DateTime(2101)
                              );
                              if(pickedDate != null ){
                                  print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                                  
                                  String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                                  print(formattedDate); //formatted date output using intl package =>  2021-03-16
                                  closeRegistrationController.text = formattedDate;
                                    //you can implement different kind of Date Format here according to your requirement
                                  // setState(() {
                                  //    dateinput.text = formattedDate; //set output date to TextField value. 
                                  // }
                                  // );
                              }else{
                                  print("Date is not selected");
                              }
                            },
                            onSaved: (val) {
                                closeRegistration = val!;
                              },
                            
                        ),
                      )
                    ),
  
                  SizedBox(height: 24),
                  ButtonWidget(
                    text: 'Upload',
                    onClicked: () {

                      upload(context);
                      // UserPreferences.setUser(user);
                      // Navigator.of(context).pop();
                    },
                  ),
                  const SizedBox(height: 10), 
                ],
              ),
            ),
    );
  }
       
   Future<void>upload(BuildContext context) async {
     ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Internship Uploaded")));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("TOKEN : " + prefs.getString('login').toString());
    
    try {
    final postResponse = await http.post(
      // Uri.parse("https://reqres.in/api/users/2"),
      Uri.parse("http://api.gunma.my.id/api/detail-profile"),
      
      // Send authorization headers to the backend.
      headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + prefs.getString('login')!,
        // HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
      },
    );
    var responseJson = jsonDecode(postResponse.body);
    // var userData = (responseJson as Map<String, dynamic>)['data'];
    var userId = (responseJson as Map<String, dynamic>)['data']['id'];
    print("USER ID : " + userId.toString());
    
    final url = Uri.parse('http://api.gunma.my.id/api/v1/internship/' + userId.toString());
    Map<String, String> requestBody = <String, String>{
        'programName' : programNameController.text,
        'isOpen': '1',
        'description': descriptionController.text,
        'duration': durationController.text,
        'benefit': benefitController.text,
        'requirement': requirementsController.text,
        'registrationLink': registrationLinkController.text,
        'closeRegistration': closeRegistrationController.text,
        'locationName': locationNameController.text,
        'tagName': tagNameController.text,
        'imageUrl': imageUrlController.text,
        'isPaid': isPaidController.text,
        'isWfh': isWfhController.text,
      };

      var request = http.MultipartRequest('POST', url)..fields.addAll(requestBody);
      var getResponse = await request.send();
 
       if (getResponse.statusCode == 200) {
          print('Information Uploaded');
          final respStr = await getResponse.stream.bytesToString();
          var body = jsonDecode(respStr);
          print(
              body,
          );
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Internship Uploaded")));
          Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => UploadInternSetting(),
          )
          );          
       }else{
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Connection Failed")));
       }
    } catch (error) {
      print(error);
    }
  }             
}

