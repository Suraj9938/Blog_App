import 'package:blog_application/screens/album_comment_screen.dart';
import 'package:blog_application/screens/blog_screen.dart';
import 'package:blog_application/screens/post_screen.dart';
import 'package:blog_application/screens/todo_screen.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogOverview extends StatefulWidget {
  @override
  _BlogOverviewState createState() => _BlogOverviewState();
}

class _BlogOverviewState extends State<BlogOverview> {
  int _currentPage = 0;

  void onTap(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  List<Widget> _screen = [
    BlogScreen(),
    PostScreen(),
    AlbumCommentScreen(),
    TodoScreen(),
  ];

  GlobalKey bottomNavKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            _currentPage == 0 ? "Blog OverView" : _currentPage == 1 ? "Posts" : _currentPage == 2 ? "Albums and Comments" : "To-Do",
            style: TextStyle(
              fontFamily: "font2",
              fontSize: 28,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        backgroundColor: Colors.blue[400],
        body: _screen[_currentPage],
      bottomNavigationBar: FancyBottomNavigation(
        initialSelection: _currentPage,
        onTabChangedListener: onTap,
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.message, title: "Posts"),
          TabData(iconData: Icons.question_answer, title: "Album and Comment"),
          TabData(iconData: Icons.check, title: "To-Do"),
        ],
      ),
    );
  }
}
