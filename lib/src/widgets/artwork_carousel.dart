import 'package:flutter/material.dart';
import 'package:qwido/domain.dart';
import 'package:qwido/src/domain/artist.dart';

class ArtworkCarousel extends StatelessWidget {
  final Artist artist;

  ArtworkCarousel(this.artist);

  @override
  Widget build(BuildContext context) {
    final ArtworkRepository artworkRepository = new ArtworkRepository();
    List<Artwork> otherArtworks = artist.oeuvres
        .map((id) => artworkRepository.findById(id))
        .where((artwork) => artwork != null)
        .toList();
    return Column(
      children: otherArtworks.isNotEmpty ? <Widget>[
        Text(
          "Oeuvres",
          style: Theme.of(context).textTheme.subhead,
        ),
        SizedBox(
          height: 250.0,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: otherArtworks
                  .map((artwork) => CarouselImage(artwork))
                  .toList(),
            ),
          ),
        ),
      ]: [],
    );
  }
}

class CarouselImage extends StatelessWidget {
  final Artwork artwork;

  CarouselImage(this.artwork);

  @override
  Widget build(BuildContext context) {
    return Image.asset('lib/assets/photos/${artwork.image}');
  }
}
