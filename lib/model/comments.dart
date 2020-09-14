import 'package:flutter/cupertino.dart';

class Comment with ChangeNotifier {
  int postId;
  int id;
  String name;
  String email;
  String body;

  // Constructor of Comments Class
  Comment({this.postId, this.id, this.name, this.email, this.body});
}
