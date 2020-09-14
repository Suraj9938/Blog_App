import 'package:blog_application/provider/comment_provider.dart';
import 'package:blog_application/widgets/comments_detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommentsScreen extends StatelessWidget {
  static const routeName = "/comments_screen";

  @override
  Widget build(BuildContext context) {
    final comments = Provider.of<Comments>(context, listen: false);
    final postId = ModalRoute.of(context).settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text("Comments"),
      ),
      backgroundColor: Colors.blue[400],
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ChangeNotifierProvider.value(
            value: comments.comments[index],
            child: CommentsDetail(),
          );
        },
        itemCount: comments.comments.length,
      ),
    );
  }
}
