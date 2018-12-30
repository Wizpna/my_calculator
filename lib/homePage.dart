import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: '');
  final TextEditingController t2 = new TextEditingController(text: '');

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSubtract() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMultiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDivide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doReset() {
    setState(() {
      t1.text = "";
      t2.text = "";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My Calculator'),
        centerTitle: true,
        //backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: SingleChildScrollView(
          child: new Container(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Result : $sum',
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.pink,
                        fontWeight: FontWeight.bold),
                  ),
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(hintText: '0'),
                    controller: t1,
                  ),
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(hintText: '0'),
                    controller: t2,
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 20.0)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new MaterialButton(
                        color: Colors.pinkAccent,
                        child: new Text(
                          '+',
                        ),
                        onPressed: doAdd,
                      ),
                      new MaterialButton(
                        color: Colors.pinkAccent,
                        child: new Text('-'),
                        onPressed: doSubtract,
                      ),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new MaterialButton(
                        color: Colors.pinkAccent,
                        child: new Text('*'),
                        onPressed: doMultiply,
                      ),
                      new MaterialButton(
                        color: Colors.pinkAccent,
                        child: new Text('/'),
                        onPressed: doDivide,
                      ),
                    ],
                  ),
                  new MaterialButton(
                    color: Colors.pinkAccent,
                    child: new Text('Reset'),
                    onPressed: doReset,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
