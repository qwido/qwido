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
          height: 250.0,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              DecoratedBox(
                position: DecorationPosition.foreground,
                child: Image.asset(
                  'lib/assets/photos/${artwork.image}',
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[
                        Colors.transparent,
                        Theme.of(context).canvasColor.withOpacity(0.1),
                        Theme.of(context).canvasColor.withOpacity(0.2),
                        Theme.of(context).canvasColor.withOpacity(0.3),
                        Theme.of(context).canvasColor.withOpacity(0.4),
                        Theme.of(context).canvasColor.withOpacity(0.5),
                        Theme.of(context).canvasColor.withOpacity(0.6),
                        Theme.of(context).canvasColor.withOpacity(0.9),
                        Theme.of(context).canvasColor,
                        Theme.of(context).canvasColor
                      ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter),
                ),
              ),
              Column(children: <Widget>[
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
                  child: Column(
                    children: <Widget>[
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          artwork.name,
                          style: Theme.of(context).textTheme.headline,
                        ),
                      ),
                      Text(
                        artwork.artist?.name ?? '',
                        style: Theme.of(context).textTheme.subhead,
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      );
}
