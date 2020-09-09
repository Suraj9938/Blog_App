import 'package:blog_application/widgets/user_detail.dart';
import 'package:flutter/material.dart';

class UserDetailScreen extends StatefulWidget {
  static const routeName = "/user_detail";

  @override
  _UserDetailScreenState createState() => _UserDetailScreenState();
}

Widget _customScrollView() {
  return CustomScrollView(
    slivers: [
      SliverAppBar(
        expandedHeight: 250.0,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          title: Text("User",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontFamily: "font2",
                fontWeight: FontWeight.bold,
              )),
          background: Image.asset(
            "assets/images/image1.png",
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      SliverFillRemaining(
        child: _draggableScrollableSheet(),
      ),
    ],
  );
}

Widget _draggableScrollableSheet() {
  return DraggableScrollableSheet(
    minChildSize: 1,
    maxChildSize: 1,
    initialChildSize: 1,
    builder: (ctx, scrollCounter) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )
        ),
        child: UserDetail(),
      );
    },
  );
}

class _UserDetailScreenState extends State<UserDetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _customScrollView(),
    );
  }
}
