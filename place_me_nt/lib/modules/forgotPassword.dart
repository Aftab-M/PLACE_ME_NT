import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  State createState() => FPState();
}

TextEditingController _email = TextEditingController();

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
              controller: _email,
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
                onPressed: () {
                  if (_email.text == "") {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text(
                        "Well, at least enter the email to reset your password !!",
                        textAlign: TextAlign.center,
                      ),
                    ));
                  }
                  if ((!_email.text.contains("@")) ||
                      (!_email.text.contains('.com'))) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text(
                        "Enter a valid e-mail id please !",
                        textAlign: TextAlign.center,
                      ),
                    ));
                  }
                  if ((_email.text != "") ||
                      (_email.text.contains("@")) ||
                      (_email.text.contains(".com"))) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        "We've sent you an email !",
                        textAlign: TextAlign.center,
                      ),
                    ));
                  }
                },
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
