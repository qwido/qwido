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
      "social": [
        {"name": "twitter", "url": "https://twitter.com/@sergeboilyfake"},
        {"name": "portfolio", "url": "https://example.org/"},
        {"name": "patreon", "url": "https://patreon.com/someprofile"}
      ]
    },
    {
      "id": "c87562f2-e5f2-4630-942b-fef9b7444fda",
      "name": "Raoul Hunter",
      "photo": "raoulhunter.png",
      "bio":
          "Raoul Hunter est un sculpteur et caricaturiste québécois né en 1926. Après des études d’art, de sculpture et de dessin, au Québec et à Paris, il devient caricaturiste au quotidien Le Soleil de Québec jusqu’en 1989. La sculpture étant sa passion, il produira près d'une cinquantaine d'oeuvres comme des monuments, des bustes, des bas-reliefs et des statues ainsi que plusieurs médailles commémoratives. Hunter a mérité plusieurs prix et distinctions jusqu'à l'Ordre du Canada en 1989.",
      "oeuvres": ["11123"],
      "social": [
        {"name": "twitter", "url": "https://twitter.com/@hunter2"},
        {"name": "facebook", "url": "https://facebook.com/rhunter2000"},
        {"name": "portfolio", "url": "https://example.org/"},
        {"name": "patreon", "url": "https://patreon.com/someprofile"}
      ]
    },
    {
      "id": "d3457b8b-d6da-4e58-9ddc-08fbd91134cd",
      "name": "Armand Vaillancourt",
      "photo": "armandvaillancourt.png",
      "bio":
          "Armand Vaillancourt est un artiste peintre et sculpteur québécois né en 1929. Artiste engagé, Vaillancourt milite pour la justice, la paix et la liberté. Son Cénotaphe est un véritable manifeste artistique et pacifique. Ses œuvres, disséminés à travers le monde, amènent à la réflexion, encouragent la négociation et la résolution des problèmes.",
      "oeuvres": ["74383"],
      "social": [
        {"name": "twitter", "url": "https://twitter.com/@hunter2"},
        {"name": "facebook", "url": "https://facebook.com/rhunter2000"},
        {"name": "portfolio", "url": "https://example.org/"},
        {"name": "patreon", "url": "https://patreon.com/someprofile"}
      ]
    },
    {
      "id": "00269fee-13fa-4df5-a5ed-291e5e879d77",
      "name": "Frédérick Lavoie",
      "photo": "fredlavoie.jpg",
      "bio": "Journaliste et écrivain, entre Montréal, Bombay et ailleurs",
      "oeuvres": ["9782924519066", "9782894063842"],
      "social": [
        {"name": "twitter", "url": "https://twitter.com/fredotchka"},
        {"name": "goodreads", "url": "https://www.goodreads.com/author/show/6574091.Fr_d_rick_Lavoie?from_search=true"},
        {"name": "editeur", "url": "http://lapeuplade.com/fr/authors/frederick-lavoie/"},
        {"name": "le devoir", "url": "https://www.ledevoir.com/auteur/frederick-lavoie"}
      ]
    },
    {
      "id": "54f40b24-6e2d-4530-85fd-4cb7abddb7ec",
      "name": "Samuel Archibald",
      "bio": "Samuel Archibald est né en 1978 à Arvida. Il enseigne à l'Université du Québec à Montréal, où il donne des cours sur le roman policier et de science-fiction, le cinéma d'horreur, les jeux vidéo et la culture populaire contemporaine.",
      "oeuvres": ["9782896980000"],
      "social": []
    }
  ];

  Artist findById(String id) {
    try {
      var map = storage
          .singleWhere((Map<String, dynamic> artist) => artist['id'] == id);

      List<dynamic> socials = map['social'];
        
      final artist = Artist(
          id: map['id'],
          name: map['name'],
          photo: map['photo'],
          bio: map['bio'],
          social: socials.map((m) => Social(name: m['name'], url: m['url'])).toList(),
          oeuvres: map['oeuvres']);
      return artist;
    } catch (e) {
      return null;
    }
  }
}
