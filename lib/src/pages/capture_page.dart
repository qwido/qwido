import 'package:flutter/material.dart';
import 'package:qwido/utils.dart';
import 'package:qwido/widgets.dart';

class CapturePage extends StatefulWidget {
  @override
  _CapturePageState createState() => _CapturePageState();
}

class _CapturePageState extends State<CapturePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  AnimationController animationController;
  Animation<double> animation;
  VoidCallback _showBottomSheetCallback;

  @override
  void initState() {
    super.initState();
    _showBottomSheetCallback = _showBottomSheet;
    animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    animation = Tween<double>(
      begin: 96.0 / 100,
      end: 100.0 / 100,
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void _showBottomSheet() {
    setState(() {
      _showBottomSheetCallback = null;
    });
    _scaffoldKey.currentState
        .showBottomSheet<Null>((BuildContext context) {
          return QwidoCodeInput();
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showBottomSheetCallback = _showBottomSheet;
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.map),
              onPressed: () =>
                  Navigator.push(context, RoutingAssistant.navToMap())),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 50.0,
          bottom: 0.0,
          left: 24.0,
          right: 24.0,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Center(
                  child: Text(
                'Appuyez pour scanner',
                style: Theme.of(context).textTheme.display1,
              )),
            ),
            ScanCodeButton(animation),
            Padding(
              padding: EdgeInsets.only(
                top: 100.0,
                bottom: 20.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 72.0),
              child: RaisedButton(
                onPressed: _showBottomSheetCallback,
                child: Text(
                  'SAISIR CODE QWIDO',
                  style: theme.textTheme.button,
                ),
                color: theme.textTheme.title.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
