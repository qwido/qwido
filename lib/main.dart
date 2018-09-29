import 'package:flutter/material.dart';
import 'package:qwido/pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Qwido';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black),
          title: TextStyle(color: Color.fromARGB(255, 255, 0, 27)),
          headline: TextStyle(color: Color.fromARGB(255, 255, 0, 27)),
        ),
        primaryColor: Color.fromARGB(255, 131, 131, 131),
        canvasColor: Color.fromARGB(255, 234, 228, 217),
        //buttonColor: Colors.purple,
        //highlightColor: Colors.orange,
        //backgroundColor: Colors.red,
        //accentColor: Colors.yellow,
      ),
      home: CapturePage(),
    );
  }
}
