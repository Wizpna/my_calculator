import 'package:flutter/material.dart';
import 'package:my_calculator/homePage.dart';

void main() {
  runApp(
    new Home(),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Calculator',
      theme: new ThemeData(primarySwatch: Colors.pink),
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
