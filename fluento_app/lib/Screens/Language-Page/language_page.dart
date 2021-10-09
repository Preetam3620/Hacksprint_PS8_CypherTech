import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LanguagePage extends StatefulWidget {
  static const routeName = '/LanguagePage';
  const LanguagePage({Key? key}) : super(key: key);

  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    final langIndex = ModalRoute.of(context)!.settings.arguments as int;
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
        body: FutureBuilder<DocumentSnapshot>(
          future: getUserDocRef(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: Text('Data is loading'));
            } else {
              Map<String, dynamic> profile = snapshot.data!.data() as Map<String, dynamic>;
              final language = profile['languages'][langIndex];
              return Column(
                mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        language['languageName'],
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.11,
                          height: MediaQuery.of(context).size.width * 0.11,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            'assets/images/${language['languageName']}.svg',
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(color: Colors.white),
                  ExpansionTile(
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
                        title: Text('Tutorial 1', style: k20TextStyle),
                        trailing: Text('${language['beginner']['Tutorial1']}', style: k20TextStyle),
                      ),
                      ListTile(
                        title: Text('Quiz 1', style: k20TextStyle),
                        trailing: Text('${language['beginner']['Quiz1']}', style: k20TextStyle),
                      ),
                      ListTile(
                        title: Text('Tutorial 2', style: k20TextStyle),
                        trailing: Text('${language['beginner']['Tutorial2']}', style: k20TextStyle),
                      ),
                      ListTile(
                        title: Text('Quiz 2', style: k20TextStyle),
                        trailing: Text('${language['beginner']['Quiz2']}', style: k20TextStyle),
                      ),
                      ListTile(
                        title: Text('Tutorial 3', style: k20TextStyle),
                        trailing: Text('${language['beginner']['Tutorial3']}', style: k20TextStyle),
                      ),
                      ListTile(
                        title: Text('Quiz 3', style: k20TextStyle),
                        trailing: Text('${language['beginner']['Quiz3']}', style: k20TextStyle),
                      ),
                      ListTile(
                        title: Text('Tutorial 4', style: k20TextStyle),
                        trailing: Text('${language['beginner']['Tutorial4']}', style: k20TextStyle),
                      ),
                      ListTile(
                        title: Text('Quiz 4', style: k20TextStyle),
                        trailing: Text('${language['beginner']['Quiz4']}', style: k20TextStyle),
                      ),
                      ListTile(
                        title: Text('Tutorial 5', style: k20TextStyle),
                        trailing: Text('${language['beginner']['Tutorial5']}', style: k20TextStyle),
                      ),
                      ListTile(
                        title: Text('Quiz 5', style: k20TextStyle),
                        trailing: Text('${language['beginner']['Quiz5']}', style: k20TextStyle),
                      ),
                    ],
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

Future<DocumentSnapshot> getUserDocRef() async {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  DocumentReference userDocRef = FirebaseFirestore.instance.collection('profiles').doc(uid);
  return userDocRef.get();
}

const k20TextStyle = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w500,
);
