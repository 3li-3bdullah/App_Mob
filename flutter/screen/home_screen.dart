import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Center(
            child: Container(
                //  padding: EdgeInsets.only(top:40,left:10,right:10,bottom:10)
                alignment: Alignment.center,
                color: Colors.yellow,
                child: Column(children: <Widget>[
                  Row(children: <Widget>[
                    Expanded(
                        child: Text("Ali",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.black,
                                backgroundColor: Colors.red,
                                fontWeight: FontWeight.w700))),
                    Expanded(
                        child: Text("Abdallah",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.deepOrange,
                                fontWeight: FontWeight.w700))),
                    Expanded(
                        child: Text("Money",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.green,
                                backgroundColor: Colors.tealAccent,
                                fontWeight: FontWeight.w700))),
                  ]),
                  Row(children: <Widget>[
                    Expanded(
                        child: Text("Ali",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.black,
                                backgroundColor: Colors.red,
                                fontWeight: FontWeight.w700))),
                    Expanded(
                        child: Text("Abdallah",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.deepOrange,
                                fontWeight: FontWeight.w700))),
                    Expanded(
                        child: Text("Ruzaki",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.green,
                                backgroundColor: Colors.tealAccent,
                                fontWeight: FontWeight.w700))),
                    MyImage(),
                    MyButton()
                  ]),
                ]))));
  }
}

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage image = new AssetImage('mario.png');
    Image MyImage = new Image(image: image);
    // return Container(child: image);
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RaisedButton button = RaisedButton(
      onPressed: () {
        onClick(context);
      },
      color: Colors.red,
      child: Text(
        "Start Mario Game",
        style: TextStyle(
            color: Colors.white,
            //fontFamily: "Ranga",
            fontSize: 30,
            fontWeight: FontWeight.w700),
      ),
    );
    return Container(
      child: button,
      margin: EdgeInsets.only(top: 20),
      height: 80,
      width: 300,
    );
  }

  void onClick(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text("Mario Game"),
      content: Text("Will Start"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}

