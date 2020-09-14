import 'package:blog_application/provider/user_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserPostDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fetch = Provider.of<Users>(context, listen: false);

    return Container(
      margin: EdgeInsets.only(top: 7, left: 10, right: 10, bottom: 4),
      width: double.infinity - 30,
      color: Colors.white,
      height: 80,
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(
              "assets/images/image1.png",
              fit: BoxFit.fill,
            ),
            title: Text(
              "Suraj Lal Shrestha",
              style: TextStyle(
                fontFamily: "font2",
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "5 posts",
              style: TextStyle(
                fontFamily: "font1",
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
