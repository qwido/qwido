import 'package:flutter/material.dart';
import 'package:qwido/utils.dart';
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
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                child: Text(
                  "Corot: Women",
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                child: Text("Septembre 2012", style: Theme.of(context).textTheme.subhead,),
              ),
              Container(
                child: Image.asset("lib/assets/artwork-placeholder.png",
                    height: 300.00),
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("lib/assets/avatar-placeholder.png"),
                ),
                title: Text(
                  'Paul Girard',
                  style: Theme.of(context).textTheme.subhead,
                ),
                trailing: new Icon(Icons.arrow_right),
                onTap: () => Navigator.push(context,
                    RoutingAssistant.navToArtistPage(ArtistId("test"))),
              ),
              Container(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam malesuada cursus lacinia. Vestibulum auctor imperdiet condimentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla vitae mi eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam in hendrerit magna. Ut odio metus, tincidunt.",
                  textAlign: TextAlign.left,
                ),
                padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
