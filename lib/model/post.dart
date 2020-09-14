import 'package:flutter/cupertino.dart';

class Post with ChangeNotifier {
  int userId;
  int id;
  String title;
  String body;

  // Constructor of Post Class
  Post({this.userId, this.id, this.title, this.body});
}
