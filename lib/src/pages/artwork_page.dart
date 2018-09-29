import 'package:flutter/material.dart';
import 'package:qwido/domain.dart';
import 'package:qwido/utils.dart';
import 'package:qwido/widgets.dart';
import 'package:share/share.dart';

class ArtworkPage extends StatelessWidget {
  final Artwork artwork;

  ArtworkPage(this.artwork);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              // Use the FontAwesomeIcons class for the IconData
              icon: Icon(Icons.share),
              onPressed: () {
                Share.share("Artwork");
              }),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Text(
                  artwork.name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                child: artwork.date != null
                    ? Text(
                        artwork.date,
                        style: Theme.of(context).textTheme.subhead,
                        textAlign: TextAlign.center,
                      )
                    : null,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset("lib/assets/photos/${artwork.image}",
                    height: 300.00),
              ),
              Container(
                child: artwork.artist != null
                    ? ArtistListTile(artwork.artist)
                    : null,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Text(
                  artwork.description,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
