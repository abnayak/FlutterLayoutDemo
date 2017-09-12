import "package:flutter/material.dart";

void Build(List<String> args) {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Icons vertically"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildIconWidget(Colors.deepPurple),
          buildIconWidget(Colors.greenAccent),
          buildIconWidget(Colors.amber),
        ],
      ),
    );
  }

  Widget buildIconWidget(Color color) {
    Widget temp = new Expanded(
      child: new Container(
        color: color,
        padding: new EdgeInsets.all(8.0),
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Expanded(
                child: new FittedBox(
                  fit: BoxFit.contain,
                  child: new Icon(Icons.timer),
                ),
              ),
              new Text(
                "Timer",
                style: new TextStyle(fontSize: 30.0),
              ),
            ],
          ),
        ),
      ),
    );

    return temp;
  }
}
