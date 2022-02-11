import 'package:flutter/material.dart';
import 'package:project/transition.dart';

class register extends StatefulWidget {
  register({Key key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  var _UNcontroller = new TextEditingController();
  var _Ncontroller = new TextEditingController();
  var _PWcontroller = new TextEditingController();

  void clearText() {
    _UNcontroller.clear();
    _Ncontroller.clear();
    _PWcontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Xpenses Tracker'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/money-cash.gif'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5)),
                      hintText: "UserName"),
                  controller: _UNcontroller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5)),
                      hintText: "Name"),
                  controller: _Ncontroller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5)),
                      hintText: "Password"),
                  controller: _PWcontroller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5)),
                      hintText: "Confirm Password"),
                  controller: _PWcontroller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text("Sign Up"),
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
        ));
  }
}
