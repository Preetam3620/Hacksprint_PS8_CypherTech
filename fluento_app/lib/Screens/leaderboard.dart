import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Language-Page/language_page.dart';

class leaderBoard extends StatefulWidget {
  static const routeName = '/leaderboard';
  @override
  _leaderBoardState createState() => _leaderBoardState();
}

class _leaderBoardState extends State<leaderBoard> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final _inst = FirebaseFirestore.instance;
  final user = FirebaseAuth.instance;

  calculateScoreandupload() async {
    int score = 0;
    final DocumentSnapshot snapshot = await getUserDocRef();
    Map<String, dynamic> profile = snapshot.data() as Map<String, dynamic>;
    profile['languages'].forEach((k, v) {
      profile['languages'][k].forEach((i, j) {
        profile['languages'][k][i].forEach((m, n) {
          score = score + int.parse(n.toString());
        });
      });
    });

    await _inst
        .collection('leaderboard')
        .doc(user.currentUser!.uid)
        .set({'username': profile['userName'], 'score': score});
  }

  getleaderboard() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await _inst
        .collection('leaderboard')
        .orderBy('score', descending: true)
        .get();
    print('yo');
    var bud = [];
    snapshot.docs.map((DocumentSnapshot document) {
      Map<String, dynamic> Data = document.data()! as Map<String, dynamic>;

      //print(bud);
    }).toList();
    print(bud);
  }

  @override
  void initState() {
    calculateScoreandupload();
    getleaderboard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF2A2A44),
        automaticallyImplyLeading: true,
        title: Text(
          'Leaderboard',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 24,
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
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0xFF353555),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rank',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Score',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: MediaQuery.of(context).size.height * 0.73,
                decoration: BoxDecoration(
                  color: Color(0xFF2A2A44),
                  border: Border.all(
                    color: Color(0xFF1A1A2F),
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
