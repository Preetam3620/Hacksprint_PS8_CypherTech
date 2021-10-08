import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage1Widget extends StatefulWidget {
  SignUpPage1Widget({Key key}) : super(key: key);

  @override
  _SignUpPage1WidgetState createState() => _SignUpPage1WidgetState();
}

class _SignUpPage1WidgetState extends State<SignUpPage1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1A1A2F),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF1A1A2F),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF1A1A2F),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.asset(
                        'assets/images/undraw_Sign_in_re_o58h.svg',
                      ).image,
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
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF1A1A2F),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Sign In with email',
                    icon: Icon(
                      Icons.email,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFF373768),
                      textStyle: FlutterFlowTheme.title2.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFC2C2C2),
                      ),
                      elevation: 10,
                      borderSide: BorderSide(
                        color: Color(0xFF373768),
                        width: 1,
                      ),
                      borderRadius: 15,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
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
                  color: Color(0xFF1A1A2F),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Sign In with Google',
                    icon: FaIcon(
                      FontAwesomeIcons.google,
                    ),
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFF373768),
                      textStyle: FlutterFlowTheme.title2.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFC2C2C2),
                      ),
                      elevation: 10,
                      borderSide: BorderSide(
                        color: Color(0xFF373768),
                        width: 1,
                      ),
                      borderRadius: 15,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF1A1A2F),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
