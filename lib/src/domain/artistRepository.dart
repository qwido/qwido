import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qwido/domain.dart';

class ArtistRepository {
  List<Map<String, dynamic>> storage = [
    {
      "id": "541664b4-bb1f-4574-8324-f718473d35f4",
      "name": "Serge Boily",
      "photo": "sergeboily.png",
      "bio":
          "Serge BOILY est un artiste-sculpteur. Né à Montréal en 1945, c’est en 1966 qu’il s’installe dans la région du Saguenay-Lac-Saint-Jean. Auteur d’une dizaine d’œuvres publiques, c’est la sculpture-fontaine du Vieux-Port de Chicoutimi qui a lancé sa carrière.",
      "oeuvres": ["12345"],
      "links": [
        {"name": "portfolio", "uri": "https://example.org/"},
        {"name": "patreon", "uri": "https://patreon.com/someprofile"}
      ],
      "social": [
        {"name": "twitter", "user": "@sergeboilyfake"}
      ]
    },
    {
      "id": "c87562f2-e5f2-4630-942b-fef9b7444fda",
      "name": "Raoul Hunter",
      "photo": "raoulhunter.png",
      "bio":
          "Raoul Hunter est un sculpteur et caricaturiste québécois né en 1926. Après des études d’art, de sculpture et de dessin, au Québec et à Paris, il devient caricaturiste au quotidien Le Soleil de Québec jusqu’en 1989. La sculpture étant sa passion, il produira près d'une cinquantaine d'oeuvres comme des monuments, des bustes, des bas-reliefs et des statues ainsi que plusieurs médailles commémoratives. Hunter a mérité plusieurs prix et distinctions jusqu'à l'Ordre du Canada en 1989.",
      "oeuvres": ["112233"],
      "links": [
        {"name": "portfolio", "uri": "https://example.org/"},
        {"name": "patreon", "uri": "https://patreon.com/someprofile"}
      ],
      "social": [
        {"name": "twitter", "user": "@hunter2"},
        {"name": "facebook", "user": "facebook.com/rhunter2000"}
      ]
    },
    {
      "id": "d3457b8b-d6da-4e58-9ddc-08fbd91134cd",
      "name": "Armand Vaillancourt",
      "photo": "armandvaillancourt.png",
      "bio":
          "Armand Vaillancourt est un artiste peintre et sculpteur québécois né en 1929. Artiste engagé, Vaillancourt milite pour la justice, la paix et la liberté. Son Cénotaphe est un véritable manifeste artistique et pacifique. Ses œuvres, disséminés à travers le monde, amènent à la réflexion, encouragent la négociation et la résolution des problèmes.",
      "oeuvres": ["74383"],
      "links": [
        {"name": "portfolio", "uri": "https://example.org/"},
        {"name": "patreon", "uri": "https://patreon.com/someprofile"}
      ],
      "social": [
        {"name": "twitter", "user": "@hunter2"},
        {"name": "facebook", "user": "facebook.com/rhunter2000"}
      ]
    }
  ];

  Artist findById(BuildContext context, String id) {
    var map = storage
        .singleWhere((Map<String, dynamic> artist) => artist['id'] == id);
    final artist = Artist(
        id: map['id'],
        name: map['name'],
        photo: map['photo'],
        bio: map['bio'],
        oeuvres: map['oeuvres']);
    return artist;
  }
}
