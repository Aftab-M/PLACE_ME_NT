// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:place_me_nt/firebase_options.dart';

import 'package:place_me_nt/admin.dart';
import 'package:place_me_nt/student.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _app(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _app extends StatefulWidget {
  State createState() => _appState();
}

class _appState extends State<_app> {
  double _width = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 209, 169, 49),
      body: _entryPage(),
    );
  }

  _entryPage() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(5)),
                  child: Image.asset('assets/images/p7.png')),
              SizedBox(height: 30),
              Text("I'm a : "),
              SizedBox(height: 20),
              _adminBlock(),
              SizedBox(height: 30),
              _studentBlock(),
            ]),
          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent),
      ),
    );
  }

  _adminBlock() {
    double w = 300;
    bool tf = true;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return Admin();
          },
        ));
      },
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            color: Color.fromARGB(255, 53, 110, 156),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          "ADMIN",
          style: TextStyle(
              letterSpacing: 1,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        )),
      ),
    );
  }

  _studentBlock() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Student();
        }));
      },
      child: Container(
          width: 250,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              color: Color.fromARGB(255, 53, 110, 156),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            "STUDENT",
            style: TextStyle(
                letterSpacing: 1,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ))),
    );
  }
}

