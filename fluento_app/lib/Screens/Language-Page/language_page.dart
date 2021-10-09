import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluento_app/Screens/Question/models/question.dart';
import 'package:fluento_app/Screens/Question/quiz_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class LanguagePage extends StatefulWidget {
  static const routeName = '/LanguagePage';
  const LanguagePage({Key? key}) : super(key: key);

  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    final langName = ModalRoute.of(context)!.settings.arguments as String;
    print(langName);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF373768),
          automaticallyImplyLeading: true,
          title: const Text(
            'Fluento',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            /*Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(' ', fit: BoxFit.cover)),
          )*/
          ],
          centerTitle: true,
          elevation: 5,
        ),
        backgroundColor: const Color(0xFF1A1A2F),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FutureBuilder<DocumentSnapshot>(
            future: getUserDocRef(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: Text('Data is loading'));
              } else {
                Map<String, dynamic> profile =
                    snapshot.data!.data() as Map<String, dynamic>;
                print(profile['languages'][langName]['beginner']['Tutorial1']
                    .runtimeType);

                return ListView(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          langName,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.11,
                            height: MediaQuery.of(context).size.width * 0.11,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              'assets/images/$langName.svg',
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Divider(color: Colors.white),
                    ExpansionTile(
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      title: Text(
                        'Beginner',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      children: <Widget>[
                        ListTile(
                          onTap: () {
                            var quizl;
                            switch (langName) {
                              case 'Hindi':
                                quizl = HindiTutNumber;
                                break;
                              case 'English':
                                quizl = EnglishTutNumber;
                                break;
                              case 'Spanish':
                                quizl = HindiTutNumber;
                                break;
                              case 'German':
                                quizl = HindiTutNumber;
                                break;
                              case 'French':
                                quizl = HindiTutNumber;
                                break;
                              default:
                                break;
                            }
                            final Map<String, dynamic> quiz = {
                              'quizList': quizl,
                              'quizName': 'Module 1: Numbers',
                              'score': profile['languages'][langName]
                                  ['beginner']['Tutorial1'],
                              'level': 'beginner',
                              'langName': langName
                            };
                            Navigator.pushNamed(context, QuizHandler.routeName,
                                arguments: quiz);
                          },
                          title: RichText(
                            text: TextSpan(
                              text: 'Module 1: ',
                              style: k20TextStyle.copyWith(
                                  color: Colors.blueAccent),
                              children: [
                                TextSpan(text: 'Numbers', style: k20TextStyle),
                              ],
                            ),
                          ),
                          trailing: Text(
                              profile['languages'][langName]['beginner']
                                      ['Tutorial1']
                                  .toString(),
                              style: k20TextStyle), // TODO: ADD score
                        ),
                        ListTile(
                          title: RichText(
                            text: TextSpan(
                              text: 'Quiz 1: ',
                              style:
                                  k20TextStyle.copyWith(color: Colors.yellow),
                              children: [
                                TextSpan(text: 'Numbers', style: k20TextStyle),
                              ],
                            ),
                          ),
                          trailing: Text(
                              profile['languages'][langName]['beginner']
                                      ['Quiz1']
                                  .toString(),
                              style: k20TextStyle), //TODO: ADD score
                        ),
                        //Numbers
                        ListTile(
                          onTap: () {
                            var quizl;
                            switch (langName) {
                              case 'Hindi':
                                quizl = HindiTutNumber;
                                break;
                              case 'English':
                                quizl = EnglishTutNumber;
                                break;
                              case 'Spanish':
                                quizl = HindiTutNumber;
                                break;
                              case 'German':
                                quizl = HindiTutNumber;
                                break;
                              case 'French':
                                quizl = HindiTutNumber;
                                break;
                              default:
                                break;
                            }
                            final Map<String, dynamic> quiz = {
                              'quizList': quizl,
                              'quizName': 'Module 2: Animals',
                              'score': profile['languages'][langName]
                                  ['beginner']['Tutorial2'],
                              'level': 'beginner',
                              'langName': langName
                            };
                            Navigator.pushNamed(context, QuizHandler.routeName,
                                arguments: quiz);
                          },
                          title: RichText(
                            text: TextSpan(
                              text: 'Module 2: ',
                              style: k20TextStyle.copyWith(
                                  color: Colors.blueAccent),
                              children: [
                                TextSpan(text: 'Animals', style: k20TextStyle),
                              ],
                            ),
                          ),
                          trailing: Text(
                              profile['languages'][langName]['beginner']
                                      ['Tutorial2']
                                  .toString()
                                  .toString(),
                              style: k20TextStyle), //TODO:ADD score
                        ),
                        ListTile(
                          title: RichText(
                            text: TextSpan(
                              text: 'Quiz 2: ',
                              style:
                                  k20TextStyle.copyWith(color: Colors.yellow),
                              children: [
                                TextSpan(text: 'Animals', style: k20TextStyle),
                              ],
                            ),
                          ),
                          trailing: Text(
                              profile['languages'][langName]['beginner']
                                      ['Quiz2']
                                  .toString(),
                              style: k20TextStyle), //TODO:ADD score
                        ),
                        //Animals
                        ListTile(
                          onTap: () {
                            var quizl;
                            switch (langName) {
                              case 'Hindi':
                                quizl = HindiTutNumber;
                                break;
                              case 'English':
                                quizl = EnglishTutNumber;
                                break;
                              case 'Spanish':
                                quizl = HindiTutNumber;
                                break;
                              case 'German':
                                quizl = HindiTutNumber;
                                break;
                              case 'French':
                                quizl = HindiTutNumber;
                                break;
                              default:
                                break;
                            }
                            final Map<String, dynamic> quiz = {
                              'quizList': quizl,
                              'quizName': 'Module 3: Colors',
                              'score': profile['languages'][langName]
                                  ['beginner']['Tutorial3'],
                              'level': 'beginner',
                              'langName': langName
                            };
                            Navigator.pushNamed(context, QuizHandler.routeName,
                                arguments: quiz);
                          },
                          title: RichText(
                            text: TextSpan(
                              text: 'Module 3: ',
                              style: k20TextStyle.copyWith(
                                  color: Colors.blueAccent),
                              children: [
                                TextSpan(text: 'Colors', style: k20TextStyle),
                              ],
                            ),
                          ),
                          trailing: Text(
                              profile['languages'][langName]['beginner']
                                      ['Tutorial3']
                                  .toString()
                                  .toString(),
                              style: k20TextStyle), //TODO:ADD score
                        ),
                        ListTile(
                          title: RichText(
                            text: TextSpan(
                              text: 'Quiz 3: ',
                              style:
                                  k20TextStyle.copyWith(color: Colors.yellow),
                              children: [
                                TextSpan(text: 'Colors', style: k20TextStyle),
                              ],
                            ),
                          ),
                          trailing: Text(
                              profile['languages'][langName]['beginner']
                                      ['Quiz1']
                                  .toString(),
                              style: k20TextStyle), //TODO:ADD score
                        ),
                        //Colors
                        ListTile(
                          onTap: () {
                            var quizl;
                            switch (langName) {
                              case 'Hindi':
                                quizl = HindiTutNumber;
                                break;
                              case 'English':
                                quizl = EnglishTutNumber;
                                break;
                              case 'Spanish':
                                quizl = HindiTutNumber;
                                break;
                              case 'German':
                                quizl = HindiTutNumber;
                                break;
                              case 'French':
                                quizl = HindiTutNumber;
                                break;
                              default:
                                break;
                            }
                            final Map<String, dynamic> quiz = {
                              'quizList': quizl,
                              'quizName': 'Module 4: Greetings',
                              'score': profile['languages'][langName]
                                  ['beginner']['Tutorial4'],
                              'level': 'beginner',
                              'langName': langName
                            };
                            Navigator.pushNamed(context, QuizHandler.routeName,
                                arguments: quiz);
                          },
                          title: RichText(
                            text: TextSpan(
                              text: 'Module 4: ',
                              style: k20TextStyle.copyWith(
                                  color: Colors.blueAccent),
                              children: [
                                TextSpan(
                                    text: 'Greetings', style: k20TextStyle),
                              ],
                            ),
                          ),
                          trailing: Text(
                              profile['languages'][langName]['beginner']
                                      ['Tutorial4']
                                  .toString()
                                  .toString(),
                              style: k20TextStyle), //TODO:ADD score
                        ),
                        ListTile(
                          title: RichText(
                            text: TextSpan(
                              text: 'Quiz 4: ',
                              style:
                                  k20TextStyle.copyWith(color: Colors.yellow),
                              children: [
                                TextSpan(
                                    text: 'Greetings', style: k20TextStyle),
                              ],
                            ),
                          ),
                          trailing: Text(
                              profile['languages'][langName]['beginner']
                                      ['Quiz4']
                                  .toString(),
                              style: k20TextStyle), //TODO:ADD score
                        ),
                        //Greetings
                        ListTile(
                          onTap: () {
                            var quizl;
                            switch (langName) {
                              case 'Hindi':
                                quizl = HindiTutNumber;
                                break;
                              case 'English':
                                quizl = EnglishTutNumber;
                                break;
                              case 'Spanish':
                                quizl = HindiTutNumber;
                                break;
                              case 'German':
                                quizl = HindiTutNumber;
                                break;
                              case 'French':
                                quizl = HindiTutNumber;
                                break;
                              default:
                                break;
                            }
                            final Map<String, dynamic> quiz = {
                              'quizList': quizl,
                              'quizName': 'Module 5: Family',
                              'score': profile['languages'][langName]
                                  ['beginner']['Tutorial5'],
                              'level': 'beginner',
                              'langName': langName
                            };
                            Navigator.pushNamed(context, QuizHandler.routeName,
                                arguments: quiz);
                          },
                          title: RichText(
                            text: TextSpan(
                              text: 'Module 5: Family',
                              style: k20TextStyle.copyWith(
                                  color: Colors.blueAccent),
                              children: [
                                TextSpan(
                                    text: 'Family Tree', style: k20TextStyle),
                              ],
                            ),
                          ),
                          trailing: Text(
                              profile['languages'][langName]['beginner']
                                      ['Tutorial5']
                                  .toString()
                                  .toString(),
                              style: k20TextStyle), //TODO:ADD score
                        ),
                        ListTile(
                          title: RichText(
                            text: TextSpan(
                              text: 'Quiz 5: ',
                              style:
                                  k20TextStyle.copyWith(color: Colors.yellow),
                              children: [
                                TextSpan(
                                    text: 'Family Tree', style: k20TextStyle),
                              ],
                            ),
                          ),
                          trailing: Text(
                              profile['languages'][langName]['beginner']
                                      ['Quiz5']
                                  .toString(),
                              style: k20TextStyle), //TODO:ADD score
                        ),
                        // ListTile(
                        //   onTap: () {
                        //     var quizl;
                        //     switch (profile.keys.elementAt(langIndex)) {
                        //       case 'Hindi':
                        //         quizl = HindiTutAnimals;
                        //         break;
                        //       case 'English':
                        //         quizl = EnglishTutAnimals;
                        //         break;
                        //       case 'Spanish':
                        //         quizl = HindiTutNumber;
                        //         break;
                        //       case 'German':
                        //         quizl = HindiTutNumber;
                        //         break;
                        //       case 'French':
                        //         quizl = HindiTutNumber;
                        //         break;
                        //       default:
                        //         break;
                        //     }
                        //     final Map<String, dynamic> quiz = {
                        //       'quizList': quizl,
                        //       'quizName': 'Tutorial2',
                        //       //'score': language['beginner']['Tutorial1'],
                        //       'level': 'beginner',
                        //       'langName': profile2.keys.elementAt(langIndex),
                        //       'langIndex': langIndex,
                        //     };
                        //     Navigator.pushNamed(context, QuizHandler.routeName,
                        //         arguments: quiz);
                        //   },
                        //   title: RichText(
                        //     text: TextSpan(
                        //       text: 'Module 2: ',
                        //       style: k20TextStyle.copyWith(
                        //           color: Colors.blueAccent),
                        //       children: [
                        //         TextSpan(text: 'Animals', style: k20TextStyle),
                        //       ],
                        //     ),
                        //   ),
                        //   trailing: Text('0', //TODO:ADD score
                        //       style: k20TextStyle),
                        // ),
                        //     ListTile(
                        //       title: RichText(
                        //         text: TextSpan(
                        //           text: 'Quiz 2: ',
                        //           style:
                        //               k20TextStyle.copyWith(color: Colors.yellow),
                        //           children: [
                        //             TextSpan(text: 'Animals', style: k20TextStyle),
                        //           ],
                        //         ),
                        //       ),
                        //       trailing: Text('${language['beginner']['Quiz2']}',
                        //           style: k20TextStyle),
                        //     ),
                        //     ListTile(
                        //       onTap: () {
                        //         var quizl;
                        //         switch (language['languageName']) {
                        //           case 'Hindi':
                        //             quizl = HindiTutNumber;
                        //             break;
                        //           case 'English':
                        //             quizl = EnglishTutNumber;
                        //             break;
                        //           case 'Spanish':
                        //             quizl = HindiTutNumber;
                        //             break;
                        //           case 'German':
                        //             quizl = HindiTutNumber;
                        //             break;
                        //           case 'French':
                        //             quizl = HindiTutNumber;
                        //             break;
                        //           default:
                        //             break;
                        //         }
                        //         final Map<String, dynamic> quiz = {
                        //           'quizList': quizl,
                        //           'quizName': 'Module 3',
                        //           'score': language['beginner']['Tutorial1'],
                        //           'langIndex': langIndex,
                        //         };
                        //         Navigator.pushNamed(context, QuizHandler.routeName,
                        //             arguments: quiz);
                        //       },
                        //       title: RichText(
                        //         text: TextSpan(
                        //           text: 'Module 3: ',
                        //           style: k20TextStyle.copyWith(
                        //               color: Colors.blueAccent),
                        //           children: [
                        //             TextSpan(text: 'Colors', style: k20TextStyle),
                        //           ],
                        //         ),
                        //       ),
                        //       trailing: Text('${language['beginner']['Tutorial3']}',
                        //           style: k20TextStyle),
                        //     ),
                        //     ListTile(
                        //       onTap: () {
                        //         var quizl;
                        //         switch (language['languageName']) {
                        //           case 'Hindi':
                        //             quizl = HindiTutNumber;
                        //             break;
                        //           case 'English':
                        //             quizl = EnglishTutNumber;
                        //             break;
                        //           case 'Spanish':
                        //             quizl = HindiTutNumber;
                        //             break;
                        //           case 'German':
                        //             quizl = HindiTutNumber;
                        //             break;
                        //           case 'French':
                        //             quizl = HindiTutNumber;
                        //             break;
                        //           default:
                        //             break;
                        //         }
                        //         final Map<String, dynamic> quiz = {
                        //           'quizList': quizl,
                        //           'quizName': 'Module 3',
                        //           'score': language['beginner']['Tutorial1'],
                        //           'langIndex': langIndex,
                        //         };
                        //         Navigator.pushNamed(context, QuizHandler.routeName,
                        //             arguments: quiz);
                        //       },
                        //       title: RichText(
                        //         text: TextSpan(
                        //           text: 'Quiz 3: ',
                        //           style:
                        //               k20TextStyle.copyWith(color: Colors.yellow),
                        //           children: [
                        //             TextSpan(text: 'Colors', style: k20TextStyle),
                        //           ],
                        //         ),
                        //       ),
                        //       trailing: Text('${language['beginner']['Quiz3']}',
                        //           style: k20TextStyle),
                        //     ),
                        //     ListTile(
                        //       title: RichText(
                        //         text: TextSpan(
                        //           text: 'Module 4: ',
                        //           style: k20TextStyle.copyWith(
                        //               color: Colors.blueAccent),
                        //           children: [
                        //             TextSpan(
                        //                 text: 'Greetings', style: k20TextStyle),
                        //           ],
                        //         ),
                        //       ),
                        //       trailing: Text('${language['beginner']['Tutorial4']}',
                        //           style: k20TextStyle),
                        //     ),
                        //     ListTile(
                        //       title: RichText(
                        //         text: TextSpan(
                        //           text: 'Quiz 4: ',
                        //           style:
                        //               k20TextStyle.copyWith(color: Colors.yellow),
                        //           children: [
                        //             TextSpan(
                        //                 text: 'Greetings', style: k20TextStyle),
                        //           ],
                        //         ),
                        //       ),
                        //       trailing: Text('${language['beginner']['Quiz4']}',
                        //           style: k20TextStyle),
                        //     ),
                        //     ListTile(
                        //       title: RichText(
                        //         text: TextSpan(
                        //           text: 'Module 5: ',
                        //           style: k20TextStyle.copyWith(
                        //               color: Colors.blueAccent),
                        //           children: [
                        //             TextSpan(
                        //                 text: 'Family tree', style: k20TextStyle),
                        //           ],
                        //         ),
                        //       ),
                        //       trailing: Text('${language['beginner']['Tutorial5']}',
                        //           style: k20TextStyle),
                        //     ),
                        //     ListTile(
                        //       title: RichText(
                        //         text: TextSpan(
                        //           text: 'Quiz 5: ',
                        //           style:
                        //               k20TextStyle.copyWith(color: Colors.yellow),
                        //           children: [
                        //             TextSpan(
                        //                 text: 'Family tree', style: k20TextStyle),
                        //           ],
                        //         ),
                        //       ),
                        //       trailing: Text('${language['beginner']['Quiz5']}',
                        //           style: k20TextStyle),
                        //     ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 2.h,
                    // ),
                    // ExpansionTile(
                    //   iconColor: Colors.white,
                    //   collapsedIconColor: Colors.white,
                    //   title: Text(
                    //     'Intermediate',
                    //     style: TextStyle(
                    //       fontFamily: 'Poppins',
                    //       color: Colors.white,
                    //       fontSize: 22,
                    //       fontWeight: FontWeight.w500,
                    //     ),
                    //   ),
                    //   children: <Widget>[
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Module 1: ',
                    //           style: k20TextStyle.copyWith(
                    //               color: Colors.blueAccent),
                    //           children: [
                    //             TextSpan(text: 'Numbers', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Tutorial1']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Quiz 1: ',
                    //           style:
                    //               k20TextStyle.copyWith(color: Colors.yellow),
                    //           children: [
                    //             TextSpan(text: 'Numbers', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Quiz1']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Module 2: ',
                    //           style: k20TextStyle.copyWith(
                    //               color: Colors.blueAccent),
                    //           children: [
                    //             TextSpan(text: 'Animals', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Tutorial2']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Quiz 2: ',
                    //           style:
                    //               k20TextStyle.copyWith(color: Colors.yellow),
                    //           children: [
                    //             TextSpan(text: 'Animals', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Quiz2']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Module 3: ',
                    //           style: k20TextStyle.copyWith(
                    //               color: Colors.blueAccent),
                    //           children: [
                    //             TextSpan(text: 'Colors', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Tutorial3']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Quiz 3: ',
                    //           style:
                    //               k20TextStyle.copyWith(color: Colors.yellow),
                    //           children: [
                    //             TextSpan(text: 'Colors', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Quiz3']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Module 4: ',
                    //           style: k20TextStyle.copyWith(
                    //               color: Colors.blueAccent),
                    //           children: [
                    //             TextSpan(
                    //                 text: 'Greetings', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Tutorial4']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Quiz 4: ',
                    //           style:
                    //               k20TextStyle.copyWith(color: Colors.yellow),
                    //           children: [
                    //             TextSpan(
                    //                 text: 'Greetings', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Quiz4']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Module 5: ',
                    //           style: k20TextStyle.copyWith(
                    //               color: Colors.blueAccent),
                    //           children: [
                    //             TextSpan(
                    //                 text: 'Family tree', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Tutorial5']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Quiz 5: ',
                    //           style:
                    //               k20TextStyle.copyWith(color: Colors.yellow),
                    //           children: [
                    //             TextSpan(
                    //                 text: 'Family tree', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Quiz5']}',
                    //           style: k20TextStyle),
                    //     ),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 2.h,
                    // ),
                    // ExpansionTile(
                    //   iconColor: Colors.white,
                    //   collapsedIconColor: Colors.white,
                    //   title: Text(
                    //     'Advance',
                    //     style: TextStyle(
                    //       fontFamily: 'Poppins',
                    //       color: Colors.white,
                    //       fontSize: 22,
                    //       fontWeight: FontWeight.w500,
                    //     ),
                    //   ),
                    //   children: <Widget>[
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Module 1: ',
                    //           style: k20TextStyle.copyWith(
                    //               color: Colors.blueAccent),
                    //           children: [
                    //             TextSpan(text: 'Numbers', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Tutorial1']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Quiz 1: ',
                    //           style:
                    //               k20TextStyle.copyWith(color: Colors.yellow),
                    //           children: [
                    //             TextSpan(text: 'Numbers', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Quiz1']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Module 2: ',
                    //           style: k20TextStyle.copyWith(
                    //               color: Colors.blueAccent),
                    //           children: [
                    //             TextSpan(text: 'Animals', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Tutorial2']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Quiz 2: ',
                    //           style:
                    //               k20TextStyle.copyWith(color: Colors.yellow),
                    //           children: [
                    //             TextSpan(text: 'Animals', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Quiz2']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Module 3: ',
                    //           style: k20TextStyle.copyWith(
                    //               color: Colors.blueAccent),
                    //           children: [
                    //             TextSpan(text: 'Colors', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Tutorial3']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Quiz 3: ',
                    //           style:
                    //               k20TextStyle.copyWith(color: Colors.yellow),
                    //           children: [
                    //             TextSpan(text: 'Colors', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Quiz3']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Module 4: ',
                    //           style: k20TextStyle.copyWith(
                    //               color: Colors.blueAccent),
                    //           children: [
                    //             TextSpan(
                    //                 text: 'Greetings', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Tutorial4']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Quiz 4: ',
                    //           style:
                    //               k20TextStyle.copyWith(color: Colors.yellow),
                    //           children: [
                    //             TextSpan(
                    //                 text: 'Greetings', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Quiz4']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Module 5: ',
                    //           style: k20TextStyle.copyWith(
                    //               color: Colors.blueAccent),
                    //           children: [
                    //             TextSpan(
                    //                 text: 'Family tree', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Tutorial5']}',
                    //           style: k20TextStyle),
                    //     ),
                    //     ListTile(
                    //       title: RichText(
                    //         text: TextSpan(
                    //           text: 'Quiz 5: ',
                    //           style:
                    //               k20TextStyle.copyWith(color: Colors.yellow),
                    //           children: [
                    //             TextSpan(
                    //                 text: 'Family tree', style: k20TextStyle),
                    //           ],
                    //         ),
                    //       ),
                    //       trailing: Text('${language['beginner']['Quiz5']}',
                    //           style: k20TextStyle),
                    //     ),
                    //   ],
                    // )
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

Future<DocumentSnapshot> getUserDocRef() async {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  DocumentReference userDocRef =
      FirebaseFirestore.instance.collection('profiles').doc(uid);
  return userDocRef.get();
}

const k20TextStyle = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w500,
);
