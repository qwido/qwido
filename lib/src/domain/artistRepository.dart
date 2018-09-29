import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qwido/domain.dart';

class ArtistRepository {
  Map<String, dynamic> storage;

  static Future<Map<String, dynamic>> fetchData(BuildContext context) async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("lib/data/artists.json");
    return json.decode(data);
  }

  static Artist findById(BuildContext context, String id) {
    final data = ArtistRepository.fetchData(context);
    final dynamic jsonArtist = data[id];
  }
}
