import 'dart:convert';

import 'package:blog_application/model/photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as https;


class Photos with ChangeNotifier {
  List<Photo> _photos = [];

  List<Photo> get photos {
    return [..._photos];
  }

  Future<List<Photo>> fetchPhoto(int albumId) async{
    List<Photo> newPhoto = [];

    String url = "https://jsonplaceholder.typicode.com/albums/$albumId/photos";
    var response = await https.get(url);

    var photoJson = json.decode(response.body) as List<dynamic>;

    for (int i=0; i < photoJson.length; i++) {
      newPhoto.add(Photo(
        id: photoJson[i]['id'],
        title: photoJson[i]['title'],
        thumbnailUrl: photoJson[i]['thumbnailUrl'],
        url: photoJson[i]['url'],
        //albumId:
      ));
    }
    _photos = newPhoto;
    notifyListeners();

    return _photos;
  }
}