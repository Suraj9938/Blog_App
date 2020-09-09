import 'package:blog_application/screens/blog_overview_screen.dart';
import 'package:blog_application/screens/user_detail_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog',
      debugShowCheckedModeBanner: false,
      home: BlogOverview(),
      routes: {
        UserDetailScreen.routeName: (ctx) => UserDetailScreen(),
      },
    );
  }
}
