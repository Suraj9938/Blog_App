import 'package:blog_application/widgets/post_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {

  static const routeName = "/post_screen";

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {


  @override
  Widget build(BuildContext context) {
    return widget(
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return PostDetail();
        },
        itemCount: 7,
      ),
    );
  }
}
