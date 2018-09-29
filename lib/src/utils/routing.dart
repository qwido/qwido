import 'package:flutter/material.dart';
import 'package:qwido/pages.dart';

class ArtId {
  final String id;

  ArtId(this.id);
}

class ArtistId {
  final String id;

  ArtistId(this.id);
}

class RoutingAssistant {
  static MaterialPageRoute navToArtworkPage(ArtId id) =>
      MaterialPageRoute(builder: (_) => ArtworkPage());
  static MaterialPageRoute navToArtistPage(ArtistId id) =>
      MaterialPageRoute(builder: (_) => ArtistPage());
}
