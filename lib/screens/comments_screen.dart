import 'package:blog_application/widgets/comments_detail.dart';
import 'package:flutter/material.dart';

class CommentsScreen extends StatelessWidget {
  static const routeName = "/comments_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comments"),
      ),
      backgroundColor: Colors.blue[400],
      body: ListView.builder(
        itemBuilder: (ctx, builder) {
          return CommentsDetail();
        },
        itemCount: 5,
      ),
    );
  }
}
