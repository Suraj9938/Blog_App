import 'dart:convert';

import 'package:blog_application/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as https;


class Users with ChangeNotifier{

  List<User> user;

  Future<List<User>> fetchUser() async{
    String url = "https://jsonplaceholder.typicode.com/users/";
    var response = await https.get(url);

    if(response.statusCode == 200) {
      List userJson = json.decode(response.body);
      user = userJson.map((e) => User.fromJson(e)).toList();
    }
    print("List value: ");
    print(user);
    return user;
  }
}