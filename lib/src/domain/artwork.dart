import 'package:qwido/domain.dart';

class Artwork {
  String id;
  String name;
  String artistId;
  String image;
  String date;
  String description;
  Artist artist;

  Artwork(
      {this.id,
      this.name,
      this.artistId,
      this.image,
      this.date,
      this.description}) {
    if (this.artistId != null) {
      ArtistRepository artistRepository = ArtistRepository();
      this.artist = artistRepository.findById(this.artistId);
    }
  }

  factory Artwork.fromMap(Map<String, dynamic> map) {
    return Artwork(
        id: map['id'],
        name: map['name'],
        artistId: map['artist_id'],
        image: map['image'],
        date: map['date'],
        description: map['description']);
  }
}
