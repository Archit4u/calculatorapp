import 'package:flutter/material.dart';

import 'CalculatorApp.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator App",
      theme: new ThemeData(
        primarySwatch: Colors.red
      ),
      home:  CalculatorApp(),
    );
  }
}
