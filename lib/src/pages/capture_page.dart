import 'package:flutter/material.dart';
import 'package:qwido/utils.dart';
import 'package:qwido/widgets.dart';

class CapturePage extends StatefulWidget {
  @override
  _CapturePageState createState() => _CapturePageState();
}

class _CapturePageState extends State<CapturePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  VoidCallback _showBottomSheetCallback;

  @override
  void initState() {
    super.initState();
    _showBottomSheetCallback = _showBottomSheet;
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
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100.0,
          bottom: 0.0,
          left: 24.0,
          right: 24.0,
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Center(child: Text('Appuyez pour scanner')),
            ),
            Container(
              child: FlatButton(
                onPressed: () => scanQR().then((code) {
                      if (code != null) {
                        Navigator.push(context,
                            RoutingAssistant.navToArtworkPage(ArtId(code)));
                      }
                    }),
                child: Image.asset(
                  'lib/assets/logo_circle.png',
                  height: 200.0,
                  width: 200.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 100.0,
                bottom: 20.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 72.0),
              child: MaterialButton(
                onPressed: _showBottomSheetCallback,
                child: Text(
                  'Saisir code Qwido',
                  style: TextStyle(color: Colors.white),
                ),
                color: Theme.of(context).textTheme.title.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
