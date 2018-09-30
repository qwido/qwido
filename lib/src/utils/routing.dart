import 'package:flutter/material.dart';
import 'package:qwido/domain.dart';
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
  static MaterialPageRoute navToArtworkPage(Artwork artwork) =>
      MaterialPageRoute(builder: (_) => ArtworkPage(artwork));

  static MaterialPageRoute navToArtistPage(ArtistId id) =>
      MaterialPageRoute(builder: (_) => ArtistPage(id));

  static MaterialPageRoute navToMap() =>
      MaterialPageRoute(builder: (_) => MapPage());

  static MaterialPageRoute navToHistory() =>
      MaterialPageRoute(builder: (_) => ScanHistoryPage());
}
