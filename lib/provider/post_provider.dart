import 'dart:convert';

import 'package:blog_application/model/post.dart';
import 'package:blog_application/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as https;

class Posts with ChangeNotifier {

  List<Post> _posts = [];

  List<Post> get posts {
    return [..._posts];
  }

  Future<List<Post>> fetchPosts(int userId) async {
    List<Post> newPost = [];

    String url = "https://jsonplaceholder.typicode.com/users/$userId/posts";
    var response = await https.get(url);

    var postJson = json.decode(response.body) as List<dynamic>;

    for(int i=0; i < postJson.length; i++) {
      newPost.add(Post(
        id: postJson[i]['id'],
        title: postJson[i]['title'],
        body: postJson[i]['body'],
        //userId:
      ));
    }
    _posts = newPost;
    notifyListeners();

    return _posts;
  }
}