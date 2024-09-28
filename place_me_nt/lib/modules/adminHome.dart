import 'package:flutter/material.dart';
import 'package:place_me_nt/modules/adminAddNotice.dart';
import 'package:place_me_nt/modules/adminHome.dart';

class AdminHome extends StatefulWidget {
  State createState() => AHState();
}

TextEditingController _title = TextEditingController();
TextEditingController _desc = TextEditingController();

List _posts = [
  {
    'title': 'MASS RECRUITMENT',
    'desc': "Notice about the mass recruiter that's gonna come this year"
  },
  {
    'title': 'MASS RECRUITMENT',
    'desc': "Notice about the mass recruiter that's gonna come this year"
  },
  {
    'title': 'MASS RECRUITMENT',
    'desc': "Notice about the mass recruiter that's gonna come this year"
  }
];


class AHState extends State<AdminHome> {
  @override
  bool _loggedIn = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: SizedBox(),
        title: Text("Admin Home"),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: FloatingActionButton(
          elevation: 5,
          backgroundColor: Colors.amber[600],
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return adminAddNotice();
            }));
          },
          child: Icon(
            Icons.add_box,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey,
        padding: const EdgeInsets.all(10),
        child: Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return _showNotice(
                            _posts[index]['title'], _posts[index]['desc']);
                      }));
                    },
                    isThreeLine: true,
                    subtitle: Text(_posts[index]['desc']),
                    title: Text(_posts[index]['title']),
                  );
                }))),
      ),
    );
  }

  _showNotice(title, desc) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.black,
          elevation: 2,
          title: Text(
            title,
            style: TextStyle(fontSize: 14),
          )),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.grey),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Text(desc,
                  maxLines: 10,
                  style: TextStyle(fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content:
                        Text("Are you sure you wanna delete this notice ?"),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Nope"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                "Notice Deleted !",
                                textAlign: TextAlign.center,
                              ),
                            ));
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          },
                          child: Text("Yes"),
                        ),
                      )
                    ],
                  );
                });
          },
          child: Icon(Icons.delete_outline_outlined,
              size: 25, color: Colors.black),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
