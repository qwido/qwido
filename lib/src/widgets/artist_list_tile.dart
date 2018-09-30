import 'package:flutter/material.dart';
import 'package:qwido/src/domain/artist.dart';
import 'package:qwido/utils.dart';

class ArtistListTile extends StatelessWidget {
  final Artist artist;

  ArtistListTile(this.artist);

  @override
  Widget build(BuildContext context) {
    ImageProvider tileImage;
    if (artist.photo != null) {
      tileImage = AssetImage("lib/assets/photos/${artist.photo}");
    } else {
      tileImage = AssetImage("lib/assets/photos/silhouette.png");
    }
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: tileImage,
      ),
      title: Text(
        artist.name,
        style: Theme.of(context).textTheme.subhead,
      ),
      trailing: new Icon(Icons.arrow_right),
      onTap: () => Navigator.push(
          context, RoutingAssistant.navToArtistPage(ArtistId(artist.id))),
    );
  }
}
