import 'package:flutter/material.dart';
import 'package:qwido/domain.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatelessWidget {
  final Social social;

  SocialIcon(this.social);

  @override
  Widget build(BuildContext context) {
    Icon icon;
    switch (this.social.name) {
      case 'facebook':
        icon = Icon(FontAwesomeIcons.facebook);
        break;
      case 'twitter':
        icon = Icon(FontAwesomeIcons.twitter);
        break;
      case 'patreon':
        icon = Icon(FontAwesomeIcons.patreon);
        break;
      case 'instagram':
        icon = Icon(FontAwesomeIcons.instagram);
        break;
      case 'portfolio':
        icon = Icon(FontAwesomeIcons.addressCard);
        break;
      case 'blog':
        icon = Icon(FontAwesomeIcons.rssSquare);
        break;
      case '500px':
        icon = Icon(FontAwesomeIcons.fiveHundredPx);
        break;
      case 'goodreads':
        icon = Icon(FontAwesomeIcons.goodreads);
        break;
      default:
        icon = Icon(FontAwesomeIcons.link);
        break;
    }
    return IconButton(
      icon: icon,
      tooltip: social.url,
      onPressed: () => launch(social.url)
    );
  }
}
