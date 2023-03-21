import 'package:flutter/material.dart';
import 'package:place_me_nt/modules/adminRegister.dart';
import 'package:place_me_nt/modules/forgotPassword.dart';
import 'package:place_me_nt/modules/adminHome.dart';

class AdminLogin extends StatefulWidget {
  State createState() => ALState();
}

TextEditingController _loginName = TextEditingController();
TextEditingController _loginPass = TextEditingController();

class ALState extends State<AdminLogin> {
  @override
  bool _loggedIn = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.grey),
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                    controller: _loginName,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(hintText: "Username")),
                SizedBox(height: 10),
                TextField(
                    controller: _loginPass,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(hintText: "Password")),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.amber[500]),
                  onPressed: () {
                    setState(() {
                      if (_loginName.text == "" || _loginPass.text == "") {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Can't leave it empty !"),
                        ));
                      } else {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return AdminHome();
                        }));
                      }
                    });
                  },
                  child: Text(
                    "Log In !",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return AdminRegister();
                      }));
                    },
                    child: Text("Don't have an account ?")),
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
      ),
    );
  }
}
