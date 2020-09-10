import 'dart:convert';

import 'package:flutter/cupertino.dart';

User userResponseFromJson(String str) => User.fromJson(json.decode(str));

String UserResponseToJson(User data) => json.encode(data.toJson());

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

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'],
    name: json['name'],
    username: json['username'],
    email: json['email'],
    address: Address.fromJson(json['address']),
    phone: json['phone'],
    website: json['website'],
    company: Company.fromJson(json['company']),
  );

  Map<String, dynamic> toJson() => {
    "id" : id,
    "name" : name,
    "username" : username,
    "email" : email,
    "address" : address.toJson(),
    "phone" : phone,
    "website" : website,
    "company" : company.toJson(),
  };
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  // Constructor of Address
  Address({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    street: json['street'],
    suite: json['suite'],
    city: json['city'],
    zipcode: json['zipcode'],
    geo: json['zipcode'],
  );

  Map<String, dynamic> toJson() => {
    "street" : street,
    "suite" : suite,
    "city" : city,
    "zipcode" : zipcode,
    "geo" : geo.toJson(),
  };
}

class Geo {
  double lat;
  double lng;

  // Constructor of Geo
  Geo({this.lat, this.lng});

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
    lat: json['lat'],
    lng: json['lng'],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng" : lng,
  };
}

class Company {
  String name;
  String catchPhrase;
  String bs;

  // Constructor of Company
  Company({this.name, this.catchPhrase, this.bs});

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    name: json['name'],
    catchPhrase: json['catchPhrase'],
    bs: json['bs'],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "catchPhrase": catchPhrase,
    "bs": bs,
  };
}
