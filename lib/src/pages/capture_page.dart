import 'package:flutter/material.dart';
import 'package:qwido/utils.dart';

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
    final controller = TextEditingController();
    setState(() {
      _showBottomSheetCallback = null;
    });
    _scaffoldKey.currentState
        .showBottomSheet<Null>((BuildContext context
        ) {
          final ThemeData themeData = Theme.of(context);
          return Container(
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(color: themeData.disabledColor))),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Code Qwido',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(),
                controller: controller,
                onEditingComplete: () => Navigator.push(
                  context,
                  RoutingAssistant.navToArtworkPage(
                    ArtId(controller.text),
                  ),
                ),
              ),
            ),
          );
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
      appBar: AppBar(
        title: Text("Qwido"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100.0,
          bottom: 0.0,
          left: 24.0,
          right: 24.0,
        ),
        child: ListView(
          children: <Widget>[
            Container(
              child: FlatButton(
                onPressed: () => scanQR().then((code) {
                      if (code != null) {
                        Navigator.push(context,
                            RoutingAssistant.navToArtworkPage(ArtId(code)));
                      }
                    }),
                child: Icon(
                  Icons.photo_camera,
                  size: 250.0,
                ),
              ),
            ),
            Padding(
              child: null,
              padding: EdgeInsets.only(
                top: 100.0,
                bottom: 20.0,
              ),
            ),
            RaisedButton(
                onPressed: _showBottomSheetCallback,
                child: const Text('SHOW BOTTOM SHEET')),
          ],
        ),
      ),
    );
  }
}
