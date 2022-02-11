import 'package:flutter/material.dart';
import '../home/analytics.dart';
import '../home/records.dart';
import '../home/wallet.dart';
import '../home/options.dart';

class homepage extends StatefulWidget {
  final String value;

  homepage({Key key, this.value}): super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            bottomNavigationBar: menu(),
            body: TabBarView(
              children: [
                records(),
                wallet(),
                analytics(),
                options(),
              ],
            ),
          )),
    );
  }
}

Widget menu() {
  return Container(
    color: Colors.blue,
    child: TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white70,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.blue,
      tabs: [
        Tab(
          text: "Records",
          icon: Icon(Icons.library_books),
        ),
        Tab(
          text: "Wallet",
          icon: Icon(Icons.account_balance_wallet),
        ),
        Tab(
          text: "Analytics",
          icon: Icon(Icons.analytics),
        ),
        Tab(
          text: "Options",
          icon: Icon(Icons.settings),
        ),
      ],
    ),
  );
}
