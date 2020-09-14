import 'package:flutter/cupertino.dart';

class Photo with ChangeNotifier{
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  // Constructor of Photo Class
  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});
}
