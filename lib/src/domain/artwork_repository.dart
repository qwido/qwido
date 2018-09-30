import 'package:qwido/domain.dart';

class ArtworkRepository {
  final List<Map<String, dynamic>> storage = [
    {
      "id": "02418",
      "name": "La fontaine des bélugas",
      "artist_id": "541664b4-bb1f-4574-8324-f718473d35f4",
      "image": "belugas.jpg",
      "date": "1993",
      "description":
          "Nature de l’œuvre: sculpture \nmatériaux: aluminium et pierre blanche\nLocalisation: Vieux Port / Boulevard Saguenay / Chicoutimi\n\nDescription de l’œuvre:\n\nLa sculpture-fontaine de Serge Boily, réalisée à l’occasion du réaménagement du Vieux Port de Chicoutimi est faite d’aluminium, de pierre blanche et de marbre. Elle véhicule un message écologique. L’enrobage en aluminium de la sculpture fait référence aux rejet de substances polluantes dans les eaux du fleuve Saguenay par l’usine Rio Tinto- Alcan; ce qui constitue une menace à l’environnement des cétacés.\n\nC’est grâce à l’exposition de Serge Boily à la galerie d’art La Corniche (Rue Racine, Chicoutimi), où l’une de ses sculptures de béluga était en vitrine, qu’un employé de la ville a souligné que « c'est exactement ça qu'on veut pour la fontaine de la Zone portuaire».\n\nAutrefois objet de polémique, la sculpture est désormais l’un des symboles de la ville."
    },
    {
      "id": "16509",
      "name": "La fée des bois",
      "artist_id": "c87562f2-e5f2-4630-942b-fef9b7444fda",
      "image": "fee.jpg",
      "date": "1960",
      "description":
          "nature de l’œuvre: sculpture \nmatériaux: aluminium, granit \n        \nDescription de l’œuvre\nCette sculpture de Raoul Hunter représente une nymphe veillant sur les espaces boisés et les richesses qu’ils contiennent. La nymphe est ici un créature mi-humaine et mi-végétale. À ses pieds, la texture de l’écorce s’accentue graduellement au fur et à mesure que remontent les lignes de son corps. \n        \nC’est dans le cadre de l’opération cadre et protection de l’Association forestière Lac-Saint-Jean—Saguenay que la a été réalisée.\n        \nPetite anecdote: L’installation de la statue en 1960 à proximité d’une congrégation, les sœurs de Notre-Dame du Bon Conseil, qui jugeaient les formes de la nymphe trop évocatrices, venaient recouvrir la statue à la nuit tombée.\n        \nLocalisation: intersection Rue Racine Est et Boulevard Saguenay Est / Chicoutimi\n"
    },
    {
      "id": "74383",
      "name": "Cénotaphe / Monument contre la guerre",
      "artist_id": "d3457b8b-d6da-4e58-9ddc-08fbd91134cd",
      "image": "cenotaphe.jpg",
      "date": "1960",
      "description":
          "nature de l’œuvre: sculpture \nmatériaux: acier\nEmplacement: Hôtel de Ville de Chicoutimi, 201 rue Racine Est, Chicoutimi\n\nLe Cénotaphe est l’œuvre du sculpteur et peintre Armand Vaillancourt. Mesurant près de 5 mètres de hauteur, ce monument est formé de quatre canons en acier et d’un assemblage de plaques de fer et de débris de métal, le tout fixé sur une table de bronze sur laquelle sont reproduits les nom des dix-sept Chicoutimiens morts sur le champ de bataille des deux conflits mondiaux du XXème siècle. \nLe Cénotaphe peut suggérer l’idée d’un arbre déchiqueté, privé de ses branches. Plusieures interprétations sont possibles: certaines y voient la bouche d’un canon éclaté après le passage d’un obus, d’autres y reconnaissaient un amas de ferrailles visibles sur les théâtres de guerres. \n\nLe Cénotaphe a été installé le 15 novembre 1959, jour du souvenir, à l’emplacement où se réunissent annuellement les anciens combattants. À son installation, l’œuvre n’a pas fait consensus: certains anciens combattants n’étaient pas satisfait du résultat de l’œuvre, qui considéraient comme trop policée au regard des horreurs qu’ils ont vécus pendant la Guerre. Pourtant, l’engouement autour de la restauration du monument en 2014 a rappelé l’attachement des saguenéens à leur Cénotaphe."
    },
    {
      "id": "11123",
      "name": "Horloge",
      "image": "horloge.jpg",
      "date": "24 août 1992",
      "description":
          "Zone Portuaire - Vieux Port - Chicoutimi\n\nAnnée de l’installation: 1992\n\nInaugurée le 24 août 1992 à l’occasion des 150 ans de la fondation de la ville de Chicoutimi, l’horloge, située au cœur de la zone portuaire est entourée de quatre plaques, dont la réalisation à fait appel à l’imaginaire des saguenéens quant à la projection de ce que sera leur ville dans 50 ans. Au cœur de l’horloge ont été placées des capsules temporelles qui seront ouvertes le 24 août 2042, 50 ans jour pour jour après leur dépôt."
    },
    {
      "id": "9782923530468",
      "artist_id": "00269fee-13fa-4df5-a5ed-291e5e879d77",
      "name": "Allers simples : aventures journalistiques en Post-Soviétie",
      "image": "allers-simples.jpg",
      "date": "août 2012",
      "description":
          "À coups d’allers simples, le journaliste québécois Frédérick Lavoie parcourt le monde et le questionne. Le reporter – voyageur curieux et insatiable – nous emmène sur les routes de la « Post-Soviétie », ensemble géopolitique balloté entre Europe et Asie, uni par un passé commun et un avenir incertain. Entre les espoirs révolutionnaires de jeunes Biélorusses dans une prison de Minsk, le discours haineux de néo-nazis à Vladivostok, les malheurs d’une pauvre babouchka ouzbèke dans la dictature turkmène et les rêves de grandeur d’une chef de village tchétchène, il nous livre quelques moments de la vie des ex-Soviétiques qu’il a côtoyés lors de ses reportages aux quatre coins de l’empire déchu. Allers simples dévoile des réalités d’habitude inaccessibles."
    },
    {
      "id": "9782924519066",
      "artist_id": "00269fee-13fa-4df5-a5ed-291e5e879d77",
      "name": "Ukraine à fragmentation",
      "image": "ukraine-a-fragmentation.jpg",
      "date": "16 novembre 2015",
      "description":
          "Comment un pays en paix s’enfonce-t-il soudainement dans la guerre ? Pourquoi des citoyens sans histoire en viennent-ils à prendre les armes et à s’entretuer ? Dans Ukraine à fragmentation, Frédérick Lavoie raconte à Artyom, un enfant qu’il a vu dans son petit cercueil bleu par un après-midi de janvier 2015, le fil des événements qui ont conduit à sa mort."
    },
  ];

  Artwork findById(String id) {
    try {
      var map = storage
          .singleWhere((Map<String, dynamic> artwork) => artwork['id'] == id);
      final artwork = Artwork(
          id: map['id'],
          name: map['name'],
          artistId: map['artist_id'],
          image: map['image'],
          description: map['description']);
      return artwork;
    } catch (e) {
      return null;
    }
  }
}
