import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class topsimg extends StatefulWidget {
  @override
  _topsimgState createState() => _topsimgState();
}

class _topsimgState extends State<topsimg> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF2A2A44),
        automaticallyImplyLeading: true,
        title: Text(
          'Module 1',
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
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF1A1A2F),
                      border: Border.all(
                        color: Color(0xFF1A1A2F),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-0.95, -0.75),
                      child: Text(
                        'Question 1',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF1A1A2F),
                      border: Border.all(
                        color: Color(0xFF1A1A2F),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-0.9, -0.75),
                      child: Text(
                        'Identify the image ',
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
              Expanded(
                flex: 6,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF1A1A2F),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      'https://picsum.photos/seed/676/600',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                      fit: BoxFit.fill,
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
                        'Option A',
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
                        'Option B',
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
                        'Option C',
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
              Expanded(
                flex: 2,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
