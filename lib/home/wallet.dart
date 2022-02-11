import 'package:flutter/material.dart';
import 'wallet/card.dart';

class wallet extends StatefulWidget {
  var balance;
  wallet({Key key, this.balance}) : super(key: key);

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  int value = 2;
  int index = 1;

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
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            toolbarHeight: kToolbarHeight,
            title: Text('Wallet balance:\$ ${widget.balance}'),
          ),
          body: ListView.builder(
              itemCount: this.value,
              itemBuilder: (context, index) => this._buildRow(index)),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _addItem,
          ),
        ));
  }

  _buildRow(int index) {
    return Container(
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.credit_card),
            iconSize: 45,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => card(
                        cardnum: index + 1,
                      )));
            },
          ),
          Text("Credit Card ${index + 1}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          IconButton(onPressed: _minusItem, icon: Icon(Icons.remove_circle))
        ],
      ),
    );
  }
}
