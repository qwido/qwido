import 'package:flutter/material.dart';
import 'package:qwido/domain.dart';
import 'package:qwido/utils.dart';
import 'package:vibrate/vibrate.dart';

class ScanCodeButton extends StatelessWidget {
  final Animation<double> animation;
  final ArtworkRepository artworkRepository = new ArtworkRepository();

  ScanCodeButton(this.animation);

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: animation,
      child: RaisedButton(
        shape: CircleBorder(),
        color: Colors.transparent,
        elevation: 20.0,
        onPressed: () => scanQR().then((code) {
              if (code != null) {
                Artwork artwork = artworkRepository.findById(code);
                if (artwork != null) {
                  Vibrate.feedback(FeedbackType.success);
                  Navigator.push(
                      context, RoutingAssistant.navToArtworkPage(artwork));
                } else {
                  ErrorToast.showError();
                }
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
