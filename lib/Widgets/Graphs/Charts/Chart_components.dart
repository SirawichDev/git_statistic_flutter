import 'package:flutter/material.dart';

class ChartComponents extends StatefulWidget {
  final int value;
  final String day;
  final double maxHeight;

  const ChartComponents({Key key, this.day, this.value, this.maxHeight})
      : super(key: key);

  @override
  _ChartComponentsState createState() => _ChartComponentsState();
}

class _ChartComponentsState extends State<ChartComponents>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  int currentVal = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(microseconds: 500),
      vsync: this,
    );
    _animationController.forward();
    _animationController.addListener(() {
      setState(() {
        currentVal = (widget.value * _animationController.value).floor();
      });
    });
  }

  @override
  void didUpdateWidget(ChartComponents oldWidget) {
    super.didUpdateWidget(oldWidget);
    _animationController.forward(from: 0);
  }

  Widget build(BuildContext context) {
    var cHeight = (widget.maxHeight - 80) * currentVal / 100.0;
    var offsety = widget.maxHeight - cHeight - 60.0;
    return Column(
      children: <Widget>[
        SizedBox(
          height: offsety,
        ),
        Text(
          currentVal.toString(),
          style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: widget.value >= 49 ? Colors.cyanAccent : Colors.yellow),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          width: 2.0,
          height: cHeight,
          color: widget.value >= 49 ? Colors.cyanAccent : Colors.yellowAccent,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          widget.day,
          style: TextStyle(fontSize: 12.0, color: Colors.white.withOpacity(.8)),
        )
      ],
    );
  }
}
