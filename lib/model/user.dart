import 'package:flutter/material.dart';

class User with ChangeNotifier {
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;

  // Constructor of User
  User(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.address,
      this.phone,
      this.website,
      this.company});
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  // Constructor of Address
  Address({this.street, this.suite, this.city, this.zipcode, this.geo});
}

class Geo {
  String lat;
  String lng;

  // Constructor of Geo
  Geo({this.lat, this.lng});
}

class Company {
  String name;
  String catchPhrase;
  String bs;

  // Constructor of Company
  Company({this.name, this.catchPhrase, this.bs});
}
