import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ArtworkCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ImageProvider> images = [];
    images.add(new AssetImage('lib/assets/photos/fee.jpg'));
    images.add(new AssetImage('lib/assets/photos/belugas.jpg'));
    return Column(
      children: <Widget>[
        Text(
          "Autres oeuvres",
          style: Theme.of(context).textTheme.subhead,
        ),
        SizedBox(
          height: 250.0,
          child: new Carousel(images: images),
        ),
      ],
    );
  }
}
