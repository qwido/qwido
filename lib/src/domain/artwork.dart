import 'package:qwido/domain.dart';

class Artwork {
  String id;
  String name;
  String artistId;
  String image;
  String date;
  String description;
  Artist artist;

  Artwork({this.id, this.name, this.artistId, this.image, this.date, this.description}) {
    if (this.artistId != null) {
      ArtistRepository artistRepository = ArtistRepository();
      this.artist = artistRepository.findById(this.artistId);
    }
  }
}
