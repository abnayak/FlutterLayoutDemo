import "package:flutter/material.dart";
import "dart:ui";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new MagentaTile(Colors.greenAccent),
          new PurpleTile(Colors.greenAccent),
        ],
      ),
    );
  }
}

class MagentaTile extends StatelessWidget {
  Color backgroundColor;

  MagentaTile(this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    return new Container(
      //constraints: new BoxConstraints.expand(),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          // 10% of the width, so there are ten blinds.
          colors: [
            const Color.fromARGB(255, 88, 222, 239),
            const Color.fromARGB(255, 20, 188, 210)
          ],
          // whitish to gray
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),
      child: new Center(
        child: new Text("Hello world"),
      ),
      height: MediaQuery.of(context).size.height / 2,
    );
  }

  Widget buildBackgroundImage() {
    return null;
  }
}

class PurpleTile extends StatelessWidget {
  Color backgroundColor;

  PurpleTile(this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    return new Container(
      //constraints: new BoxConstraints.expand(),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          // 10% of the width, so there are ten blinds.
          colors: [
            const Color.fromARGB(255, 204, 102, 255),
            const Color.fromARGB(255, 170, 0, 255)
          ],
          // whitish to gray
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),
      child: new Center(
        child: new Text("Hello world"),
      ),
      height: MediaQuery.of(context).size.height / 2,
    );
  }

  Widget buildBackgroundImage() {
    return null;
  }
}
