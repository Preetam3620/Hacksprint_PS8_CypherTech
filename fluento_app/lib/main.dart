import 'package:fluento_app/Screens/SignUp/signup_page2.dart';
import 'package:fluento_app/Screens/SignUp/signup_page3.dart';
import 'package:fluento_app/Screens/select_language_card.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sizer/sizer.dart';
import 'Screens/SignIn/signin_page.dart';
import 'Screens/SignUp/signup_page1.dart';
import 'Screens/WelcomePage/welcome_page.dart';
import 'Screens/home_page.dart';
import 'Screens/profile_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Fluento',
          routes: {
            SignInPage.routeName: (context) => const SignInPage(),
            WelcomePage.routeName: (context) => WelcomePage(),
            SignUpPage1.routeName: (context) => const SignUpPage1(),
            SignUpPage2.routeName: (context) => const SignUpPage2(),
            SignUpPage3.routeName: (context) => const SignUpPage3(),
            SelectLanguageCard.routeName: (context) =>
                const SelectLanguageCard(),
            HomePage.routeName: (context) => HomePage(),
            ProfilePage.routeName: (context) => ProfilePage(),
          },
          initialRoute: WelcomePage.routeName,
        );
      },
    );
  }
}
