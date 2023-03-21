import 'package:flutter/material.dart';
import 'package:place_me_nt/modules/forgotPassword.dart';

class AdminRegister extends StatefulWidget {
  @override
  State createState() => ARState();
}

TextEditingController _uname = TextEditingController();
TextEditingController _pass = TextEditingController();
TextEditingController _confirm = TextEditingController();

class ARState extends State<AdminRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        title: Text("Admin Register"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: _uname,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Username",
                  )),
              SizedBox(height: 10),
              TextField(
                  controller: _pass,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "Password")),
              SizedBox(height: 20),
              TextField(
                  controller: _confirm,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "Confirm Password")),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.amber[500]),
                onPressed: () {
                  setState(() {
                    if (_uname.text == "" ||
                        _pass.text == "" ||
                        _confirm.text == "") {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Can't leave any field empty !")));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                            "Account Successfully created, you can now Log in !"),
                        duration: Duration(seconds: 5),
                      ));
                      Navigator.of(context).pop();
                    }
                  });
                },
                child: Text(
                  "Create Account !",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Already got an account ?")),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ForgotPassword();
                  }));
                },
                child: Text(
                  "Forgot Password ?",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
