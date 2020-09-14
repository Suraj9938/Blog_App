import 'package:blog_application/provider/post_provider.dart';
import 'package:blog_application/widgets/post_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostScreen extends StatelessWidget {
  static const routeName = "/post_screen";

  @override
  Widget build(BuildContext context) {
    final posts = Provider.of<Posts>(context, listen: false);
    final userId = ModalRoute.of(context).settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: FutureBuilder(
        future:posts.fetchPosts(userId),
        builder: (context, snapshot){
          return ListView.builder(
            itemBuilder: (ctx, index) {
              return ChangeNotifierProvider.value(
                value: posts.posts[index],
                child: PostDetail(),
              );
            },
            itemCount: posts.posts.length,
          );
        },
      ),
    );
  }
}
