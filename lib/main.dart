import 'package:flutter/material.dart';
import 'package:qwido/pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Qwido';

  @override
  Widget build(BuildContext context) {
    final red = Color.fromARGB(255, 229, 16, 62);
    final grey = Color.fromARGB(255, 99, 100, 98);
    var theme = Theme.of(context);
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        textTheme: TextTheme(
            title: TextStyle(color: red),
            headline: TextStyle(color: red),
            display1:
                TextStyle(fontFamily: "Proxima", fontSize: 25.0, color: grey),
            body1: TextStyle(color: Colors.black),
            button:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        primaryColor: grey,
        canvasColor: Color.fromARGB(255, 234, 228, 217),
        primaryIconTheme: theme.iconTheme.copyWith(color: grey),
      ),
      home: CapturePage(),
    );
  }
}
