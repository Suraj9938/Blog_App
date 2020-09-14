import 'package:blog_application/model/comments.dart';
import 'package:blog_application/provider/comment_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommentsDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final comment = Provider.of<Comment>(context, listen: false);
    final postId = ModalRoute.of(context).settings.arguments as int;
    final posts = Provider.of<Comments>(context, listen: false).comments;
    final post = posts.singleWhere((pst) => pst.id == postId);

    return Container(
      padding: EdgeInsets.only(
        left: 4,
        right: 4,
      ),
      width: double.infinity - 20,
      height: 200,
      color: Colors.blue[400],
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/image1.png",
                ),
                title: Text(
                  comment.name,
                  style: TextStyle(
                    fontFamily: "font1",
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  comment.email,
                  style: TextStyle(
                    fontFamily: "font1",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 25,
                right: 10,
              ),
              child: Text(
                comment.body,
                style: TextStyle(
                  fontFamily: "font1",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
