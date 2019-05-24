import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Row(
          children: <Widget>[
            SizedBox(
              width: 32.0,
            ),
            Icon(Icons.arrow_back_ios)
          ],
        ),
        actions: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 15.0, right: 20.0, bottom: 10.0),
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.0),
                  color: Colors.teal.withOpacity(0.1)),
              child: MaterialButton(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.check,
                      size: 16.0,
                      color: Colors.lightGreenAccent,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Friends",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.lightGreenAccent,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.pink,
      body: Column(
        children: <Widget>[
          userComponent(),
          scorerComponent(),
          graphComponent()
        ],
      ),
    );
  }

  Widget userComponent() {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, top: 16.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 65.0,
            height: 65.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(image: AssetImage('assets/x.jpeg')),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Sirawich",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Voungchuy",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w200),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget scorerComponent() {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 30.0, right: 16.0),
      child: Container(
        width: double.infinity,
        height: 125.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "200",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "rank",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.pink.withOpacity(.5),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "4000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                    Text(
                      "points",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.pink.withOpacity(.5)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget graphComponent() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 32.0, top: 30.0, right: 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                "Days",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                "Months",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              Expanded(
                child: Text(
                  "contribute per months",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Colors.white.withOpacity(.6), fontSize: 10.0),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 200.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                chartComponent("13.20", 40),
                chartComponent("10.20", 30),
                chartComponent("2.20", 20),
                chartComponent("15.20", 50),
                chartComponent("2.20", 20),
                chartComponent("15.20", 50),
                chartComponent("19.20", 90),
                chartComponent("19.20", 90),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget chartComponent(String day, int value) {
    var cHeight = 150.0 * value / 100.0;
    var offsety = 200.0 - cHeight - 60.0;
    return Column(
      children: <Widget>[
        SizedBox(
          height: offsety,
        ),
        Text(
          value.toString(),
          style: TextStyle(fontSize: 12.0, color: value > 50 ? Colors.cyanAccent: Colors.yellow),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          width: 2.0,
          height: cHeight,
          color: value > 50 ? Colors.cyanAccent : Colors.yellowAccent,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(day,style: TextStyle(fontSize: 12.0,color: Colors.white.withOpacity(.6)),)
      ],
    );
  }
}
