import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArtistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paul Girard"),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Image.asset("lib/assets/avatar-placeholder.png",
                    height: 300.00),
              ),
              Container(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam malesuada cursus lacinia. Vestibulum auctor imperdiet condimentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla vitae mi eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam in hendrerit magna. Ut odio metus, tincidunt.",
                  textAlign: TextAlign.left,
                ),
                padding: EdgeInsets.all(20.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(children: <Widget>[
                  Icon(FontAwesomeIcons.facebook),
                  Icon(FontAwesomeIcons.twitter),
                  Icon(FontAwesomeIcons.instagram),
                  Icon(FontAwesomeIcons.pinterest),
                  Icon(FontAwesomeIcons.snapchat),
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
