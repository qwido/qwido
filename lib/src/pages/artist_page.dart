import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArtistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                child: Text(
                  "Paul Girard",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset("lib/assets/avatar-placeholder.png", height: 300.00),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam malesuada cursus lacinia. Vestibulum auctor imperdiet condimentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla vitae mi eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam in hendrerit magna. Ut odio metus, tincidunt.",
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: Row(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.facebook),
                    Icon(FontAwesomeIcons.twitter),
                    Icon(FontAwesomeIcons.instagram),
                    Icon(FontAwesomeIcons.patreon),
                    Icon(FontAwesomeIcons.pinterest),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
