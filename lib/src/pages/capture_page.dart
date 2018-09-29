import 'package:flutter/material.dart';
import 'package:qwido/utils.dart';

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

  void _showBottomSheet() {
    final controller = TextEditingController();
    setState(() {
      _showBottomSheetCallback = null;
    });
    _scaffoldKey.currentState
        .showBottomSheet<Null>((BuildContext context) {
          final themeData = Theme.of(context);
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
            ScaleTransition(
              scale: animation,
              child: MaterialButton(
                elevation: 50.0,
                onPressed: () => scanQR().then((code) {
                      if (code != null) {
                        Navigator.push(context,
                            RoutingAssistant.navToArtworkPage(ArtId(code)));
                      }
                    }),
                child: PhysicalModel(
                  elevation: 15.0,
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  child: Image.asset(
                    'lib/assets/logo_circle.png',
                    height: 200.0,
                    width: 200.0,
                  ),
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
