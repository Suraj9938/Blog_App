import 'package:blog_application/widgets/blog_carousel.dart';
import 'package:blog_application/widgets/user_listView.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BlogCarousel(),
          Padding(
            padding: EdgeInsets.only(top: 28, left: 20, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Users",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "font2",
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: UserListView(),
          ),
        ],
      ),
    );
  }
}
