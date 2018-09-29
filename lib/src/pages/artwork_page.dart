import 'package:flutter/material.dart';
import 'package:qwido/domain.dart';
import 'package:qwido/utils.dart';
import 'package:share/share.dart';

class ArtworkPage extends StatelessWidget {
  Artwork artwork;
  Artist artist;


  ArtworkPage(ArtId id) {
    ArtworkRepository artworkRepository = ArtworkRepository();
    ArtistRepository artistRepository = ArtistRepository();
    artwork = artworkRepository.findById(id.id);
    if (artwork.artistId != null) {
      artist = artistRepository.findById(artwork.artistId);
    }
  }

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
                child: Text(
                  "Septembre 2012",
                  style: Theme.of(context).textTheme.subhead,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset("lib/assets/photos/${artwork.image}",
                    height: 300.00),
              ),
              Container(
                child: artist != null ? ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage("lib/assets/photos/${artist.photo}"),
                  ),
                  title: Text(
                    artist.name,
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () => Navigator.push(context,
                      RoutingAssistant.navToArtistPage(ArtistId(artist.id))),
                ): null,
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
