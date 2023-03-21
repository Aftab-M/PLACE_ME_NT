import 'package:flutter/material.dart';

class Student extends StatefulWidget {
  State createState() => StudentState();
}

Color _backgroundColor = Colors.amber;

class StudentState extends State<Student> {
  @override
  bool _loggedIn = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        foregroundColor: Colors.black,
        title: Text("Student Module"),
        centerTitle: true,
      ),
      body: (_loggedIn == true) ? _StudentHome() : _StudentLogin(),
    );
  }

  // _StudentLogin() {
  //   return Container(
  //     padding: const EdgeInsets.all(10),
  //     width: MediaQuery.of(context).size.width,
  //     height: MediaQuery.of(context).size.height,
  //     decoration: BoxDecoration(color: Colors.grey),
  //     child: Center(child: Text("STUDENT LOGIN")),
  //   );
  // }

  _StudentHome() {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Colors.grey),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text("* STUDENT HOME CONTENTS HERE *"),
          )),
    );
  }

  _StudentLogin() {
    return Container(
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
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Username",
                  )),
              SizedBox(height: 10),
              TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "Password")),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: _backgroundColor),
                onPressed: () {
                  setState(() {
                    _loggedIn = true;
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
                      return StudentRegister();
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
    );
  }
}

class StudentRegister extends StatefulWidget {
  @override
  State createState() => SRState();
}

class SRState extends State<StudentRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        title: Text("Student Register"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Username",
                  )),
              SizedBox(height: 10),
              TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "Password")),
              SizedBox(height: 20),
              TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "Confirm Password")),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.amber[500]),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          "Account successfully created, you can now Log In !")));
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Create Account",
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

class ForgotPassword extends StatefulWidget {
  State createState() => FPState();
}

class FPState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Forgot Password ?"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: "Enter your email"),
            ),
            SizedBox(height: 20),
            Text(
              "Pss ! We're about to send you an email\nYou can reset your password through there !",
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.amber, foregroundColor: Colors.black),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(width: 80),
                      Text("Send email !"),
                      SizedBox(width: 10),
                      Icon(Icons.send, size: 20)
                    ],
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
