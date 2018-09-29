import 'package:flutter/material.dart';
import 'package:qwido/pages.dart';

void main() {
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

class _PageSelector extends StatelessWidget {
  const _PageSelector({this.pages});

  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    final TabController controller = DefaultTabController.of(context);
    final Color color = Theme.of(context).accentColor;
    return SafeArea(
      top: true,
      bottom: false,
      child: Column(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Row(children: <Widget>[
                TabPageSelector(controller: controller),
              ], mainAxisAlignment: MainAxisAlignment.center)),
          Expanded(
            child: IconTheme(
              data: IconThemeData(
                size: 128.0,
                color: color,
              ),
              child: TabBarView(
                  children: pages.map((Widget icon) {
                return Container(
                  padding: const EdgeInsets.all(12.0),
                  child: icon,
                );
              }).toList()),
            ),
          ),
        ],
      ),
    );
  }
}

class PageSelectorDemo extends StatelessWidget {
  final List<Widget> pages = [CapturePage(), MapPage()];

  @override
  Widget build(BuildContext context) {
    return _PageSelector(pages: pages);
  }
}
