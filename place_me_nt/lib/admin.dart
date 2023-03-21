import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:place_me_nt/modules/adminHome.dart';
import 'package:place_me_nt/modules/adminLogin.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class Admin extends StatefulWidget {
  State createState() => _createAppState();
}

class _createAppState extends State<Admin> {
  @override
  bool _loggedIn = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text("Admin module"),
        centerTitle: true,
      ),
      body: (_loggedIn == true) ? AdminHome() : AdminLogin(),
    );
  }
}
