import 'package:fluento_app/Screens/Language-Page/language_page.dart';
import 'package:fluento_app/Screens/Question/quiz_handler.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../quiz_handler.dart';

class FOpsImage extends StatefulWidget {
  final String title;
  final String questionText;
  final String imageString;
  final String optionA;
  final String optionB;
  final String optionC;
  final String optionD;
  final String answer;
  final int quesNo;
  final int length;
  final String langName;
  final String level;
  final String quizNo;

  FOpsImage({
    required this.title,
    required this.questionText,
    required this.imageString,
    required this.optionA,
    required this.optionB,
    required this.optionC,
    required this.optionD,
    required this.answer,
    required this.quesNo,
    required this.length,
    required this.langName,
    required this.level,
    required this.quizNo,
  });
  @override
  _FOpsImageState createState() => _FOpsImageState();
  static const routeName = '/fopsImage';
}

class _FOpsImageState extends State<FOpsImage> {
  bool isA = false;
  bool isB = false;
  bool isC = false;
  bool isD = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2A2A44),
        automaticallyImplyLeading: true,
        title: Text(
          widget.title,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF1A1A2F),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Question
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Flexible(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF1A1A2F),
                        border: Border.all(
                          color: Color(0xFF1A1A2F),
                        ),
                      ),
                      child: Text(
                        'Question ${widget.quesNo}: \n${widget.questionText} ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // image
              Expanded(
                flex: 5,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF1A1A2F),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      widget.imageString,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF1A1A2F),
                  ),
                ),
              ),

              // Option A
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (widget.optionA == widget.answer) {
                          isA = true;
                        }
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: isA ? Colors.green : Color(0xFF1A1A2F),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFF2A2A44),
                          width: 5,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0.1),
                        child: Text(
                          widget.optionA,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: isA ? Colors.black : Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Option B
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (widget.optionB == widget.answer) isB = true;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: isB ? Colors.green : Color(0xFF1A1A2F),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFF2A2A44),
                          width: 5,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0.1),
                        child: Text(
                          widget.optionB,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: isB ? Colors.black : Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Option C
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (widget.optionC == widget.answer) isC = true;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: isC ? Colors.green : Color(0xFF1A1A2F),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFF2A2A44),
                          width: 5,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0.1),
                        child: Text(
                          widget.optionC,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: isC ? Colors.black : Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Option D
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (widget.optionD == widget.answer) isD = true;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: isD ? Colors.green : Color(0xFF1A1A2F),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFF2A2A44),
                          width: 5,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0.1),
                        child: Text(
                          widget.optionD,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: isD ? Colors.black : Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF1A1A2F),
                  ),
                ),
              ),

              // Next button
              Expanded(
                flex: 2,
                child: Hero(
                  tag: 'nxtbut',
                  child: GestureDetector(
                    onTap: () async {
                      if (widget.quesNo == widget.length) {
                        if (isA == true || isB == true || isC == true || isD == true) {
                          score += 1;
                          print(score);
                        }
                        await updateScrore(score: score, langName: widget.langName, title: widget.quizNo, level: widget.level);
                        Navigator.pushReplacementNamed(context, LanguagePage.routeName, arguments: widget.langName);
                        score = 0;
                        currentPage = 0;
                      } else {
                        if (isA == true || isB == true || isC == true || isD == true) {
                          score += 1;
                          print(score);
                        }
                        increasePageView();
                      }
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF6C63FF),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color(0xFF2A2A44),
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, -0.15),
                        child: Text(
                          'Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> updateScrore({required score, required langName, required title, required level}) async {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  DocumentReference userDocRef = FirebaseFirestore.instance.collection('profiles').doc(uid);
  await userDocRef
      .update({'languages.$langName.$level.$title': score})
      .then((value) => print("Query Done"))
      .catchError((error) => print("Failed to query: $error"));
  ;
}
