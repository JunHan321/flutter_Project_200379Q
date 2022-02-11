import 'package:flutter/material.dart';

class optpage extends StatefulWidget {
  final icon;
  final label;

  optpage({Key key, this.icon, this.label}) : super(key: key);

  @override
  State<optpage> createState() => _optpageState();
}

class _optpageState extends State<optpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.label + " Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1st child Icon
            Icon(
              widget.icon,
              size: 120.0,
              color: Colors.amber,
            ),
            //2nd child label
            Text(
              widget.label,
              style: TextStyle(
                color: Colors.amber,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
