import 'package:flutter/material.dart';

import 'details/bkdetails.dart';

class book1 extends StatefulWidget {
  book1({Key key}) : super(key: key);

  @override
  State<book1> createState() => _book1State();
}

class _book1State extends State<book1> {
  int value = 2;

  _addItem() {
    setState(() {
      value = value + 1;
    });
  }

  _minusItem() {
    setState(() {
      value = value - 1;
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: ListView.builder(
          itemCount: value,
          itemBuilder: (context, index) => this._buildRow(index)),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: Icon(Icons.add),
      ),
    );
  }

  _buildRow(int index) {
    return Container(
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.book),
            iconSize: 45,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => bkdetails(pagenum: index + 1)));
            },
          ),
          Text("Account Book ${index + 1}",
              style: TextStyle(fontSize: 18, 
              fontWeight: FontWeight.bold)
              ),
              IconButton(onPressed: _minusItem, icon:Icon(Icons.remove_circle))
        ],
      ),
    );
  }
}
