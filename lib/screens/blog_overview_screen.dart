import 'package:blog_application/widgets/blog_carousel.dart';
import 'package:blog_application/widgets/user_listView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BlogCarousel(),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Users")
              ],
            ),
          ),
          Container(
            height: 190,
            width: double.infinity,
            child: UserListView(),
          ),
        ],
      ),
    );
  }
}

