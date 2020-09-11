import 'package:blog_application/screens/photo_screen.dart';
import 'package:flutter/material.dart';

class AlbumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 50),
      itemBuilder: (ctx, index) {
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
                "quidem molestiae enim",
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
      },
      itemCount: 8,
    );
  }
}
