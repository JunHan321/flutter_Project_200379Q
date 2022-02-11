import 'package:flutter/material.dart';
import '../transition.dart';

class profile extends StatefulWidget {
  final String value;
  profile({Key key, this.value}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  var _UNcontroller = new TextEditingController();

  void clearText() {
    _UNcontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/money-cash.gif'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 0.5)),
                    hintText: "UserName"),
                controller: _UNcontroller,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 0.5)),
                    hintText: "Password"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 0.5)),
                    hintText: "Confirm Password"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text("Update"),
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext ccontext) => trans(
                      value: _UNcontroller.text,
                    ),
                  );
                  Navigator.of(context).push(route);
                },
                onLongPress: clearText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
