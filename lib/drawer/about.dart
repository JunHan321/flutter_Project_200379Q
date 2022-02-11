import 'package:flutter/material.dart';

class about extends StatefulWidget {
  about({Key key}) : super(key: key);

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  var _usercontroller = new TextEditingController();
  var _textcontroller = new TextEditingController();

  void clearText() {
    _usercontroller.clear();
    _textcontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Xpenses Tracker"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Xpenses Tracker the application that is best customised to fit most user, especially for those who requires multiple createable profiles and accounts to best suit their needs.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Xpenses is a small company made from a group of friends, who got together to solve a problem that each of them faced in daily situations, whether be it at the end of the month where bills and taxes would be received, or just food and transport expenses of each members in their family.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Contact Information:',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Email:',
                  style: TextStyle(fontSize: 18),
                ),
                RaisedButton(
                    child: Text('xpenses@mail.com'),
                    onPressed: () => ('mailto:xpenses@mail.com')),
                Text(
                  'Contact No.: ',
                  style: TextStyle(fontSize: 18),
                ),
                RaisedButton(
                    onPressed: () => ('tel://12345678'),
                    child: Text('12345678'))
              ],
            ),
          ),
          Text(
              "The application 'Xpenses Tracker' is designed and coded by Ng Jun Han.")
        ],
      ),
    );
  }
}
