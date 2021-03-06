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

  List<SocialIcon> iconList(List<Social> socials) {
    return socials.map((s) => SocialIcon(s)).toList();
  }

  @override
  Widget build(BuildContext context) {
    Image artistPhoto;
    if (artist.photo != null) {
      artistPhoto =
          Image.asset("lib/assets/photos/${artist.photo}", height: 300.0);
    } else {
      artistPhoto =
          Image.asset("lib/assets/photos/silhouette.png", height: 300.0);
    }
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
                  child: artistPhoto),
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
                  children: iconList(artist.social),
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ArtworkCarousel(artist),
              )
            ],
          )
        ],
      ),
    );
  }
}
