import 'package:flutter/material.dart';
import 'records/book1.dart';
import 'records/book2.dart';

class records extends StatefulWidget {
  records({Key key}) : super(key: key);

  @override
  State<records> createState() => _recordsState();
}

class _recordsState extends State<records> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              color: Colors.blue,
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.book),
                  ),
                  Tab(
                    icon: Icon(Icons.book),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [book1(),book2()],
          ),
        ),
      ),
    );
  }
}
