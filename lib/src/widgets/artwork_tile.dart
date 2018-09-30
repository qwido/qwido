import 'package:flutter/material.dart';
import 'package:qwido/domain.dart';
import 'package:qwido/utils.dart';

class GridTileText extends StatelessWidget {
  const GridTileText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => FittedBox(
        fit: BoxFit.scaleDown,
        alignment: FractionalOffset.centerLeft,
        child: Text(text),
      );
}

class ArtworkTile extends StatelessWidget {
  final Artwork artwork;

  const ArtworkTile({Key key, this.artwork}) : super(key: key);

  void navigateToArtist(BuildContext context) {
    Navigator.push(context, RoutingAssistant.navToArtworkPage(artwork));
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => navigateToArtist(context),
        child: Container(
          height: 150.0,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                'lib/assets/photos/${artwork.image}',
                height: 150.0,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.transparent, Colors.yellow],
                      begin: FractionalOffset.center),
                ),
              ),
            ],
          ),
        ),
      );
}
