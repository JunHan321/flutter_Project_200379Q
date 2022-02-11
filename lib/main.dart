import 'package:flutter/material.dart';
import 'package:project/register.dart';
import 'package:project/transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ccontext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xpenses Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: loginpage(),
    );
  }
}

class loginpage extends StatefulWidget {
  loginpage({Key key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var _IDcontroller = new TextEditingController();
  var _PWDcontroller = new TextEditingController();

  void clearText() {
    _IDcontroller.clear();
    _PWDcontroller.clear();
  }

  @override
  Widget build(BuildContext ccontext) {
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
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/money-cash.gif'),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 0.5)),
                    hintText: "ID"),
                controller: _IDcontroller,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 0.5)),
                    hintText: "PWD"),
                controller: _PWDcontroller,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text("Login"),
                    onPressed: () {
                      var route = MaterialPageRoute(
                        builder: (BuildContext ccontext) => trans(
                          value: _IDcontroller.text,
                        ),
                      );
                      Navigator.of(ccontext).push(route);
                    },
                    onLongPress: clearText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text("Sign Up"),
                    onPressed: () {
                      var route = MaterialPageRoute(
                        builder: (BuildContext ccontext) => register(),
                      );
                      Navigator.of(ccontext).push(route);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
