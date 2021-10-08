import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sizer/sizer.dart';

import 'Screens/SignIn/signin_page.dart';
import 'Screens/SignUp/signup_page.dart';

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
            SignUpPage.routeName: (context) => const SignUpPage(),
          },
          initialRoute: SignInPage.routeName,
        );
      },
    );
  }
}
