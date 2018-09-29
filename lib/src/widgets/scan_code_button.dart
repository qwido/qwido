import 'package:flutter/material.dart';
import 'package:qwido/utils.dart';

class ScanCodeButton extends StatelessWidget {
  final Animation<double> animation;

  ScanCodeButton(this.animation);

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: animation,
      child: RaisedButton(
        shape: CircleBorder(),
        color: Colors.transparent,
        elevation: 50.0,
        onPressed: () => scanQR().then((code) {
              if (code != null) {
                Navigator.push(
                    context, RoutingAssistant.navToArtworkPage(ArtId(code)));
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
    );
  }
}
