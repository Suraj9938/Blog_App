import 'dart:convert';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as https;
import 'package:blog_application/model/comments.dart';

class Comments with ChangeNotifier {
  List<Comment> _comments = [];

  List<Comment> get comments {
    return [..._comments];
  }

  Future<List<Comment>> _fetchComments(int postId) async{
    List<Comment> newComment = [];
    
    String url = "https://jsonplaceholder.typicode.com/posts/$postId/comments";
    var respose = await https.get(url);

    var commentJson = json.decode(respose.body) as List<dynamic>;

    for(int i=0; i < commentJson.length; i++) {
      newComment.add(Comment(
        id: commentJson[i]['id'],
        name: commentJson[i]['name'],
        body: commentJson[i]['body'],
        email: commentJson[i]['email'],
        //postId:
      ));
    }
    _comments = newComment;
    notifyListeners();

    return _comments;
  }
}