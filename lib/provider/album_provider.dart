import 'dart:convert';

import 'package:blog_application/model/album.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Albums with ChangeNotifier {
  List<Album> _albums = [];

  List<Album> get albums {
    return [..._albums];
  }
  Future<List<Album>> fetchAlbum(int userId) async{
    List<Album> newAlbum = [];

    String url = "https://jsonplaceholder.typicode.com/users/$userId/albums";
    var response = await http.get(url);

    var albumJson = json.decode(response.body) as List<dynamic>;

    for(int i=0; i < albumJson.length; i++) {
      newAlbum.add(Album(
        id: albumJson[i]['id'],
        title: albumJson[i]['title'],
        //userId: ,
      ));
    }
    _albums = newAlbum;
    notifyListeners();

    return _albums;
  }
}