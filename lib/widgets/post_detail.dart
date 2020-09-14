import 'package:blog_application/model/post.dart';
import 'package:blog_application/provider/user_provider.dart';
import 'package:blog_application/screens/comments_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostDetail extends StatefulWidget {

  @override
  _PostDetailState createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  bool _isComment = false;

  @override
  Widget build(BuildContext context) {
    final post = Provider.of<Post>(context, listen: false);
    final userId = ModalRoute.of(context).settings.arguments as int;
    final users = Provider.of<Users>(context, listen: false).users;
    final user = users.singleWhere((usr) => usr.id == userId);

    return Container(
      padding: EdgeInsets.only(left: 6, right: 6, top: 10, bottom: 3),
      width: double.infinity - 20,
      height: _isComment ? 395 : 350,
      color: Colors.blue[400],
      child: Card(
        child: Padding(
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Image.asset(
                  "assets/images/image1.png",
                  height: 50,
                  width: 60,
                ),
                title: Text(
                  user.name,
                  style: TextStyle(
                    fontFamily: "font1",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: IconButton(
                  icon: _isComment
                      ? Icon(
                    Icons.expand_less,
                  )
                      : Icon(
                    Icons.expand_more,
                  ),
                  onPressed: () {
                    setState(() {
                      _isComment = !_isComment;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 24,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Title : ",
                      style: TextStyle(
                        fontFamily: "font1",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Container(
                      width: 240,
                      height: 80,
                      child: Text(
                        post.title,
                        style: TextStyle(
                          fontFamily: "font1",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  post.body,
                  style: TextStyle(
                    fontFamily: "font2",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              if (_isComment)
                Container(
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        thickness: 3,
                        color: Colors.black,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 14,
                          left: 36,
                        ),
                        child: InkWell(
                          child: Text(
                            "Go To Comments",
                            style: TextStyle(
                              fontFamily: "font2",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, CommentsScreen.routeName);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
