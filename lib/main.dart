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
          )
        ],
      ),
      backgroundColor: Colors.pink,
      body: Column(
        children: <Widget>[
          userComponent(),
          scorer()
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(image: AssetImage('assets/x.jpeg')),
            ),
          ),
          SizedBox(
            width: 10.0,
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

  Widget scorer() {
    return Padding(
      padding: const EdgeInsets.only(left: 32,top: 24.0,right: 16.0),
      child: Container(
        width: double.infinity,
        height: 130.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("200",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                    Text("rank",style: TextStyle(fontSize: 15.0,color: Colors.pink.withOpacity(.5),fontWeight: FontWeight.w500),)
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
                    Text("4000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                    Text("points",style: TextStyle(fontWeight: FontWeight.w500,color:Colors.pink.withOpacity(.5)),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
