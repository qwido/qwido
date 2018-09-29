import 'package:flutter/material.dart';
import 'package:share/share.dart';

class ArtworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qwido"),
        actions: <Widget>[
          IconButton(
              // Use the FontAwesomeIcons class for the IconData
              icon: Icon(Icons.share),
              onPressed: () {
                Share.share("Artwork");
              }),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Text(
                  "Corot: Women",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20.0),
                ),
                padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              ),
              Container(
                child: Image.asset("lib/assets/artwork-placeholder.png",
                    height: 300.00),
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Paul Girard',
                  style: Theme.of(context).textTheme.subhead,
                ),
              ),
              Container(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam malesuada cursus lacinia. Vestibulum auctor imperdiet condimentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla vitae mi eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam in hendrerit magna. Ut odio metus, tincidunt.",
                  textAlign: TextAlign.justify,
                ),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
