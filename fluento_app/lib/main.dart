import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluento_app/Screens/Language-Page/language_page.dart';
import 'package:fluento_app/Screens/Language-Page/language_page.dart';
import 'package:fluento_app/Screens/Question/quiz_handler.dart';
import 'package:fluento_app/Screens/SignUp/signup_page2.dart';
import 'package:fluento_app/Screens/SignUp/signup_page3.dart';
import 'package:fluento_app/Screens/friends/add_friends_card.dart';
import 'package:fluento_app/Screens/requestpage.dart';
import 'package:fluento_app/Screens/select_language_card.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sizer/sizer.dart';
import 'Screens/SignIn/signin_page.dart';
import 'Screens/SignUp/signup_page1.dart';
import 'Screens/WelcomePage/welcome_page.dart';
import 'Screens/friends/friends_page.dart';
import 'Screens/home_page.dart';
import 'Screens/profile_page.dart';
import 'Screens/Question/screens/BeginnerScreens/3ops_noimg.dart';
import 'Screens/Question/screens/BeginnerScreens/4ops_img.dart';
import 'Screens/Question/screens/BeginnerScreens/4ops_noimag.dart';
import 'Screens/Question/screens/BeginnerScreens/3ops_img.dart';
import 'Screens/leaderboard.dart';

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
            FriendsPage.routeName: (context) => FriendsPage(),
            addFriendsCard.routeName: (context) => addFriendsCard(),
            requestPage.routeName: (context) => requestPage(),
            LanguagePage.routeName: (context) => const LanguagePage(),
            leaderBoard.routeName: (context) => leaderBoard(),
            FOpsImage.routeName: (context) => FOpsImage(
                  quizNo: '',
                  level: '',
                  langName: '',
                  length: 0,
                  title: '',
                  imageString: '',
                  optionC: '',
                  optionD: '',
                  optionB: '',
                  questionText: '',
                  answer: '',
                  optionA: '',
                  quesNo: 1,
                ),
            fopsNoImage.routeName: (context) => fopsNoImage(
                  quizNo: '',
                  level: '',
                  langName: '',
                  length: 0,
                  title: '',
                  optionC: '',
                  optionD: '',
                  optionB: '',
                  questionText: '',
                  answer: '',
                  optionA: '',
                  quesNo: 1,
                ),
            topsnoimage.routeName: (context) => topsnoimage(
                  quizNo: '',
                  level: '',
                  langName: '',
                  length: 0,
                  title: '',
                  imageString: '',
                  optionC: '',
                  optionD: '',
                  optionB: '',
                  questionText: '',
                  answer: '',
                  optionA: '',
                  quesNo: 1,
                ),
            topsimg.routeName: (context) => topsimg(
                  quizNo: '',
                  level: '',
                  langName: '',
                  length: 0,
                  title: '',
                  imageString: '',
                  optionC: '',
                  optionD: '',
                  optionB: '',
                  questionText: '',
                  answer: '',
                  optionA: '',
                  quesNo: 1,
                ),
            QuizHandler.routeName: (context) => QuizHandler(),
          },
          initialRoute: WelcomePage.routeName,
        );
      },
    );
  }
}
