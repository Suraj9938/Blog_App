import 'package:blog_application/widgets/photo_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoScreen extends StatelessWidget {
  static const routeName = "/photo_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Photos",
        ),
      ),
      backgroundColor: Colors.blue[400],
      body: Card(
        color: Colors.blue[400],
        child: GridView.count(
          padding: EdgeInsets.symmetric(
            vertical: 6,
          ),
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, PhotoDetail.routeName);
              },
              child: Image.network(
                "https://via.placeholder.com/600/92c952",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, PhotoDetail.routeName);
              },
              child: Image.network(
                "https://via.placeholder.com/600/92c952",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, PhotoDetail.routeName);
              },
              child: Image.network(
                "https://via.placeholder.com/600/92c952",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, PhotoDetail.routeName);
              },
              child: Image.network(
                "https://via.placeholder.com/600/92c952",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, PhotoDetail.routeName);
              },
              child: Image.network(
                "https://via.placeholder.com/600/92c952",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, PhotoDetail.routeName);
              },
              child: Image.network(
                "https://via.placeholder.com/600/92c952",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, PhotoDetail.routeName);
              },
              child: Image.network(
                "https://via.placeholder.com/600/92c952",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, PhotoDetail.routeName);
              },
              child: Image.network(
                "https://via.placeholder.com/600/92c952",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
