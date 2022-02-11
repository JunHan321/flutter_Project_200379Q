import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'drawer/homepage.dart';
import 'drawer/profile.dart';
import 'drawer/about.dart';

class trans extends StatefulWidget {
  final String value;
  trans({Key key, this.value}) : super(key: key);

  @override
  State<trans> createState() => _transState();
}

class _transState extends State<trans> {
  String title = 'Home';
  int index = 0;
  List<Widget> list = [homepage(), profile(), about()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(title),
        ),
        body: list[index],
        drawer: MyDrawer(
            onTap: (context, i, txt) {
              setState(() {
                index = i;
                title = txt;
                Navigator.pop(context);
              });
            },
            value: widget.value),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final Function onTap;
  final String value;

  MyDrawer({this.onTap, this.value});

  @override
  Widget build(BuildContext context) {
    void _logout() {
      var route = MaterialPageRoute(
        builder: (BuildContext context) => loginpage(),
      );
      Navigator.of(context).push(route);
    }

    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/money-cash.gif'),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        value,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        value + '@nyp.edu.sg',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () => onTap(context, 0, 'Home'),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () => onTap(context, 1, 'Profile'),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('About'),
                onTap: () => onTap(context, 2, 'About'),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: _logout,
              ),
            ],
          ),
        ));
  }
}
