
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage1Widget extends StatefulWidget {
  SignUpPage1Widget({Key key}) : super(key: key);

  @override
  _SignUpPage1WidgetState createState() => _SignUpPage1WidgetState();
}

class _SignUpPage1WidgetState extends State<SignUpPage1Widget>
    with TickerProviderStateMixin {
  TextEditingController textController1;
  TextEditingController textController2;
  bool passwordVisibility;
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'columnOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
    ),
  };

  @override
  void initState() {
    super.initState();
    createAnimations(animationsMap.values, this);
    startAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

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
                        'assets/images/password.svg',
                      ).image,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
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
                  child: TextFormField(
                    controller: textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: FlutterFlowTheme.title3.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6C63FF),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6C63FF),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0xFF373768),
                      prefixIcon: Icon(
                        Icons.lock_sharp,
                        color: Color(0xFF6C63FF),
                      ),
                    ),
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.visiblePassword,
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
                  child: TextFormField(
                    controller: textController2,
                    obscureText: !passwordVisibility,
                    decoration: InputDecoration(
                      hintText: 'Confirm password',
                      hintStyle: FlutterFlowTheme.title3.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6C63FF),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6C63FF),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0xFF373768),
                      prefixIcon: Icon(
                        Icons.lock_sharp,
                        color: Color(0xFF6C63FF),
                      ),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility = !passwordVisibility,
                        ),
                        child: Icon(
                          passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF1A1A2F),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(220, 25, 20, 25),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Next ',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xFF6C63FF),
                          textStyle: FlutterFlowTheme.title3.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          elevation: 10,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                        loading: _loadingButton,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.75, -0.35),
                      child: Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                        size: 24,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ).animated([animationsMap['columnOnActionTriggerAnimation']]),
      ),
    );
  }
}
