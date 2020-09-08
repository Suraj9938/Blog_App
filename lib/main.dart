import 'package:blog_application/screens/blog_overview_screen.dart';
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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Blog"),
        ),
        backgroundColor: Colors.blue[300],
        body: BlogOverview(),
      ),
    );
  }
}
