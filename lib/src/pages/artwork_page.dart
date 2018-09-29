import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArtworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Container(
              child: new Image.asset("lib/assets/artwork-placeholder.png", height: 300.00),
            ),
            new IconButton(
              // Use the FontAwesomeIcons class for the IconData
                icon: new Icon(FontAwesomeIcons.share),
                onPressed: () {
                  print("Pressed");
                }),
            new Text("COucher de soleil avec manathan ensoleillé"),
            new Text("Paul Girard"),
            new Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam malesuada cursus lacinia. Vestibulum auctor imperdiet condimentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla vitae mi eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam in hendrerit magna. Ut odio metus, tincidunt."),
          ],
        )
      ],
    );
  }
}
