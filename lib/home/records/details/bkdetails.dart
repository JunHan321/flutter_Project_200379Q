import 'package:flutter/material.dart';

class bkdetails extends StatefulWidget {
  final pagenum;

  bkdetails({Key key, this.pagenum}) : super(key: key);

  @override
  State<bkdetails> createState() => _bkdetailsState();
}

class _bkdetailsState extends State<bkdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Account Book ' + widget.pagenum.toString()),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 0.5)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 0.5)),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ]));
  }
}
