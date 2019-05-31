import 'package:flutter/material.dart';
import 'package:flutter_statistics/Widgets/Graphs/Charts/Chart_components.dart';

enum Period { Days, Months }

class GraphComponents extends StatefulWidget {
  List<int> perdays = [22, 34, 62, 100, 12, 64, 50];
  List<int> permonths = [51, 44, 22, 11, 70, 32, 20];
  List<String> timeLabels = [
    "23.30",
    "21.30",
    "12.30",
    "10.20",
    "9.20",
    "20.40",
    "18.40"
  ];
  List<String> monthLabels = [
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12"
  ];

  @override
  _GraphComponentsState createState() => _GraphComponentsState();
}

class _GraphComponentsState extends State<GraphComponents> {
  Period periodSelected = Period.Days;

  @override
  Widget build(BuildContext context) {
    List<int> values;
    List<String> labels;
    if (periodSelected == Period.Days) {
      values = widget.perdays;
      labels = widget.timeLabels;
    } else {
      values = widget.permonths;
      labels = widget.monthLabels;
    }
    return Expanded(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 32.0, top: 20.0, right: 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        periodSelected = Period.Days;
                      });
                    },
                    child: Text(
                      "Days",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: periodSelected == Period.Days
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        periodSelected = Period.Months;
                      });
                    },
                    child: Text(
                      "Months",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: periodSelected == Period.Months
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ),
                  Expanded(
                    child: periodSelected == Period.Months
                        ? Text(
                            "contribute per months",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          )
                        : Text(
                            "contribute per days",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                List<Widget> rows = [];
                values.asMap().forEach((index, val) {
                  var label = labels[index];
                  rows.add(chartComponent(label, val, constraints.maxHeight));
                });
                return Container(
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: rows),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

Widget chartComponent(String day, int value, double maxHeight) {
  return ChartComponents(day: day, value: value, maxHeight: maxHeight);
}
