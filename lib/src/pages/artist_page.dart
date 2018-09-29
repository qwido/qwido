import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qwido/domain.dart';
import 'package:qwido/utils.dart';
import 'package:qwido/widgets.dart';

class ArtistPage extends StatelessWidget {
  Artist artist;

  ArtistPage(ArtistId id) {
    ArtistRepository artistRepository = ArtistRepository();
    artist = artistRepository.findById(id.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                child: Text(
                  artist.name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset("lib/assets/photos/${artist.photo}",
                    height: 300.00),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  artist.bio,
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: Row(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.facebook),
                    Icon(FontAwesomeIcons.twitter),
                    Icon(FontAwesomeIcons.instagram),
                    Icon(FontAwesomeIcons.patreon),
                    Icon(FontAwesomeIcons.pinterest),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ArtworkCarousel(),
              )
            ],
          )
        ],
      ),
    );
  }
}
