import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gunma/Register/RegisterScreen.dart';
import 'package:gunma/SettingPage/setting_screen.dart';
import 'package:gunma/UploadInternship/setting_upload.dart';
// import 'package:gunma/DetailPage/detail_Screen.dart';
import 'package:gunma/HomePage/components/bottom_navigation_bar.dart';
// import 'package:gunma/DetailPage/detail_screen.dart';
// import 'package:gunma/SplashScreen/splashscreen/splashcreen2_page.dart';
import 'package:gunma/HomePage/home_screen1.dart';
// import 'package:gunma/HomePage/newest_homepage.dart';
// import 'package:gunma/HomePage/new_home_screen.dart';
// import 'package:gunma/Login1/login_screen.dart';
import 'package:gunma/ProfilePage/edit_profile_screen.dart';
import 'package:gunma/ProfilePage/profile_screen.dart';
import 'package:gunma/ProfilePage/setting_profile.dart';
import 'package:gunma/Providers/Internship_providers.dart';
// import 'package:gunma/Register/register_screen.dart';
// import 'package:gunma/HomePage/home_screen.dart';
import 'package:gunma/SplashScreen/splashscreen_page.dart';
import 'package:gunma/UploadInternship/upload_intern_screen.dart';
import 'package:gunma/utils/user_preferences.dart';
import 'package:provider/provider.dart';
import 'Login/login_screen.dart';
import 'Providers/Internship_providers.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);

  // await UserPreferences.init();

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home : RegisterScreen(),
      // home: UploadInternSetting(),
      // home: BottomNavigation(),
      // home: UploadInternPage(),
      home: SplashScreenPage(),
      // home: UploadInternSetting(),
      // home: ProfileScreen(),
      // home: SettingScreen(),
      // home: LoginScreen(),
      // home: RegisterScreen(),
      // home: HomePageScreen(),
    );
  }
}
