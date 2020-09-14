import 'dart:convert';

import 'package:blog_application/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as https;

class Users with ChangeNotifier {
  List<User> _users = [];

  List<User> get users{
    return [..._users];
  }

  User findById(String id) {
    return _users.firstWhere((user) => user.id == id);
  }

  Future<List<User>> fetchUser() async {
    List<User> newUser = [];

    String url = "https://jsonplaceholder.typicode.com/users/";
    var response = await https.get(url);

    var userJson = json.decode(response.body) as List<dynamic>;
    // print("User Json: ");
    // print(userJson);
    // _users = userJson.map((users1) => User.fromJson(users1)).toList();
    //
    // print("Users :");
    // print(_users);

    for (int i =0; i< userJson.length; i++){
      var comp = userJson[i]['company'] as Map<String, dynamic>;
      var address = userJson[i]['address'] as Map<String, dynamic>;
      Company newCompany = Company(name: comp['name'], bs: comp['bs'], catchPhrase: comp['catchPhrase'],);
      Address addressLocation = Address(street: address['street'], suite: address['suite'], city: address['city'], zipcode: address['zipcode'], geo: Geo(lat: address['geo']['lat'], lng: address['geo']['lng']));
      // print(addressLocation.geo.lng);
      newUser.add(User(
        id: userJson[i]['id'],
        name: userJson[i]['name'],
        address: addressLocation,
        company: newCompany,
        username: userJson[i]['username'],
        email: userJson[i]['email'],
        website: userJson[i]['website'],
        phone: userJson[i]['phone'],

      ));

    }
    _users = newUser;
    notifyListeners();

    return _users;
  }

}
