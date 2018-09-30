import 'package:qwido/domain.dart';

class Artist {
  String id;
  String name;
  String photo;
  String bio;
  List<Social> social;
  List<String> oeuvres;

  Artist({this.id, this.name, this.photo, this.bio, this.social, this.oeuvres});
}