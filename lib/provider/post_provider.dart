import 'dart:convert';

import 'package:blog_application/model/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as https;

class Posts with ChangeNotifier{

  List<Post> _posts = List<Post>();

  Future<List<Post>> fetchPost() async{
    var url = "https://jsonplaceholder.typicode.com/users/{user_id}/posts";
    var response = await https.get(url);

    var posts = List<Post>();

    if(response.statusCode == 200) {
      var postJson = json.decode(response.body);
      for(var post in postJson) {
        posts.add(Post.fromJson(post));
      }
    }
    return posts;
  }
}