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
        textTheme: TextTheme(body1: TextStyle(color: Colors.black)),
        primaryColor: Color.fromARGB(255, 131, 131, 131),
        canvasColor: Color.fromARGB(255, 234, 228, 217),
        //buttonColor: Colors.purple,
        //highlightColor: Colors.orange,
        //backgroundColor: Colors.red,
        //accentColor: Colors.yellow,
      ),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: CapturePage());
  }
}
