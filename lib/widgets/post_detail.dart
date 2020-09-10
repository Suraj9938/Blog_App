import 'package:blog_application/screens/comments_screen.dart';
import 'package:flutter/material.dart';

class PostDetail extends StatefulWidget {

  @override
  _PostDetailState createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  bool _isComment = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15, left: 6, right: 6, top: 12),
      width: double.infinity - 20,
      height: _isComment ? 370 : 300,
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
                  "Suraj Lal Shrestha",
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
                        "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
                        style: TextStyle(
                          fontFamily: "font1",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 15,
                ),
                child: Text(
                  "quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto",
                  style: TextStyle(
                    fontFamily: "font2",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
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
