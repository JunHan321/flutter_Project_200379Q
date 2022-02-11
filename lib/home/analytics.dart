import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class analytics extends StatefulWidget {
  analytics({Key key}) : super(key: key);

  @override
  State<analytics> createState() => _analyticsState();
}

class _analyticsState extends State<analytics> {

  @override
  Map<String, double> data = new Map();
  bool _loadChart = false;
  @override
  void initState() {
    data.addAll({
      'Family Expenses': 7,
      'Bills and Taxes': 5,
      'Investments': 4,
      'Savings': 6
    });
    super.initState();
  }

  List<Color> _colors = [
    Colors.teal,
    Colors.blueAccent,
    Colors.amberAccent,
    Colors.redAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              'Expenses',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            _loadChart
                ? PieChart(
                    dataMap: data,
                    colorList:
                        _colors, // if not declared, random colors will be chosen
                    animationDuration: Duration(milliseconds: 1500),
                    chartLegendSpacing: 32.0,
                    chartRadius: MediaQuery.of(context).size.width /
                        2.7, //determines the size of the chart
                    showChartValuesInPercentage: true,
                    showChartValues: true,
                    showChartValuesOutside: false,
                    chartValueBackgroundColor: Colors.grey[200],
                    showLegends: true,
                    legendPosition: LegendPosition
                        .right, //can be changed to top, left, bottom
                    decimalPlaces: 1,
                    showChartValueLabel: true,
                    initialAngle: 0,
                    chartValueStyle: defaultChartValueStyle.copyWith(
                      color: Colors.blueGrey[900].withOpacity(0.9),
                    ),
                    chartType:
                        ChartType.disc, //can be changed to ChartType.ring
                  )
                : SizedBox(
                    height: 150,
                  ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text(
                'Click to Show Chart',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  _loadChart = true;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
