import 'package:flutter/material.dart';
import 'package:project/home/wallet.dart';

class card extends StatefulWidget {
  final cardnum;
  card({Key key, this.cardnum}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  var _Balcontroller = new TextEditingController();

  void clearText() {
    _Balcontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Credit Card ' + widget.cardnum.toString()),
        ),
        body: Column(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 0.5)),
                  hintText: "Balance"),
              controller: _Balcontroller,
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            wallet(balance: _Balcontroller.text)));
                  },
                  onLongPress: clearText,
                ),
              ),
            ],
          ),
        ]));
  }
}
