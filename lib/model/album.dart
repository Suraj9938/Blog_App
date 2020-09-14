import 'package:flutter/cupertino.dart';

class Album with ChangeNotifier {
  int userId;
  int id;
  String title;

  // Constructor of Album Class
  Album({this.userId, this.id, this.title});
}
