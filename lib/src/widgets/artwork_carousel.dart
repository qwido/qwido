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
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Image.asset('lib/assets/photos/belugas.jpg'),
                Image.asset('lib/assets/photos/fee.jpg'),
                Image.asset('lib/assets/photos/cenotaphe.jpg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
