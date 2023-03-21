import 'package:flutter/material.dart';

class adminAddNotice extends StatefulWidget {
  State createState() => aANState();
}

List<String> adminChoices = [
  'Placement',
  'Training',
  'Reminder',
  'Suggestion',
  'General'
];

TextEditingController _noticeTitle = TextEditingController();
TextEditingController _noticeDetails = TextEditingController();
List<String> adminSelected = [];

class aANState extends State<adminAddNotice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
          elevation: 3,
          foregroundColor: Colors.black,
          backgroundColor: Colors.amber,
          title: Text("Add a Notice")),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.green[400],
        padding: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
          child: Column(
            children: [
              TextField(
                controller: _noticeTitle,
                textAlign: TextAlign.left,
                decoration: InputDecoration(hintText: "Notice Title"),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _noticeDetails,
                textAlign: TextAlign.left,
                decoration: InputDecoration(hintText: "Notice Details"),
                maxLines: 4,
              ),
              SizedBox(height: 40),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: adminSelected.map((e) {
                  bool _isSelected = true;
                  return ChoiceChip(
                    selectedColor: Colors.amber[300],
                    avatar: Icon(Icons.cancel),
                    label: Text(e),
                    backgroundColor: Colors.amber[300],
                    selected: _isSelected,
                    onSelected: (ee) {
                      setState(() {
                        adminChoices.add(e);
                        adminSelected.remove(e);
                      });
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Text("- -  Add categories  - - "),
              SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: adminChoices.map((e) {
                  bool _isSelected = false;
                  return ChoiceChip(
                    label: Text(e),
                    selected: _isSelected,
                    onSelected: (ee) {
                      setState(() {
                        _isSelected = true;
                        if (adminSelected.contains(e)) {
                        } else {
                          adminSelected.add(e);
                          adminChoices.remove(e);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 40),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    onPressed: () {
                      if (!adminSelected.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          "Notice Sent !",
                          textAlign: TextAlign.center,
                        )));
                        Navigator.of(context).pop();
                      }
                      if (adminSelected.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Select at least one category !"),
                          duration: Duration(seconds: 2),
                        ));
                      }
                      if (_noticeTitle.text == '' &&
                          _noticeDetails.text == '') {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 2),
                          content:
                              Text("Can't keep the Title or Details empty !"),
                        ));
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.send,
                        color: Colors.black,
                        size: 20,
                      ),
                    )),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
