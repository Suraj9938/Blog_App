import 'package:blog_application/model/album.dart';
import 'package:blog_application/screens/photo_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlbumDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final album = Provider.of<Album>(context, listen: false);
    final userId = ModalRoute.of(context).settings.arguments as int;

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, PhotoScreen.routeName);
      },
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.only(top: 25, bottom: 10, left: 14, right: 14),
            color: Colors.blue[400],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                child:
                Image.asset("assets/images/image2.png", fit: BoxFit.fill),
              ),
            ),
          ),
          Text(
            album.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "font1",
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
