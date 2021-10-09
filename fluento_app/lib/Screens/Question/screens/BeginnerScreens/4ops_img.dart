import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  FOpsImage(
      {required this.title,
      required this.questionText,
      required this.imageString,
      required this.optionA,
      required this.optionB,
      required this.optionC,
      required this.optionD,
      required this.answer,
      required this.quesNo});
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
                        if (widget.optionA == widget.answer) isA = true;
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
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF1A1A2F),
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
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
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
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF1A1A2F),
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
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
