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
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.0),
                color: Colors.teal.withOpacity(0.1)),
            child: MaterialButton(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.check,
                    color: Colors.tealAccent,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Friends",
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.tealAccent,
                        fontFamily: "Monaca"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.pink,
      body: Column(
        children: <Widget>[
          userComponent(),
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
              width: 75.0,
              height: 75.0,
              child: Image(
                image: AssetImage('assets/x.jpeg'),
              )),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: <Widget>[
              Text(
                "Sirawich",
                style:
                    TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text("Voungchuy",style: TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.w500),)
            ],
          )
        ],
      ),
    );
  }
}
