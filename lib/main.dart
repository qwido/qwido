import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qwido/pages.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  return runApp(MyApp());
}

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
            headline: TextStyle(
                fontFamily: "Lora",
                color: red,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
            ),
            display1:
                TextStyle(fontFamily: "Proxima", fontSize: 25.0, color: grey),
            subhead: TextStyle(fontFamily: "Proxima", color: grey, fontSize: 20.0),
            body1: TextStyle(fontFamily: "Proxima", color: Colors.black, fontSize: 22.0),
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
