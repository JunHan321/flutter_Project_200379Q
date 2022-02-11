import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'options/optionspage.dart';

class options extends StatefulWidget {
  options({Key key}) : super(key: key);

  @override
  State<options> createState() => _optionsState();
}

class _optionsState extends State<options> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: GridView.count(
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: [
              _buildGridCell(context, Icons.language ,"Language"),
              _buildGridCell(context, Icons.calendar_view_day, "Theme Settings"),
              _buildGridCell(context, CupertinoIcons.clock, "Periodic Bill"),
              _buildGridCell(context, Icons.attach_money, "Exchange Currency"),
              _buildGridCell(context, Icons.wallet_membership, "Purchase Premium"),
              _buildGridCell(context, Icons.filter, "Categories"),
              _buildGridCell(context, Icons.people, "Memberes"),
              _buildGridCell(context, Icons.money, "Budget"),
              _buildGridCell(context, Icons.book, "Books"),
              _buildGridCell(context, Icons.credit_card, "Accounts"),
              _buildGridCell(context, Icons.search, "Search"),
              _buildGridCell(context, Icons.more, "More"),
            ]))
      ],
    );
  }
}

Widget _buildGridCell(BuildContext cContext, IconData cIcon, String cLabel) {
  return Container(
    padding: const EdgeInsets.all(8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(cIcon),
          iconSize: 48.0,
          onPressed: () {
            Navigator.of(cContext).push(MaterialPageRoute(
                builder: (context) => optpage(icon: cIcon, label: cLabel)));
          },
        ),
        Text(cLabel),
      ],
    ),
    color: Colors.blue[100],
  );
}
