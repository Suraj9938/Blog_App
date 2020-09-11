import 'package:blog_application/provider/user_provider.dart';
import 'package:blog_application/screens/blog_overview_screen.dart';
import 'package:blog_application/screens/comments_screen.dart';
import 'package:blog_application/screens/photo_screen.dart';
import 'package:blog_application/screens/user_detail_screen.dart';
import 'package:blog_application/widgets/photo_detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Users(),
        )
      ],
      child: MaterialApp(
        title: 'Blog',
        debugShowCheckedModeBanner: false,
        home: BlogOverview(),
        routes: {
          UserDetailScreen.routeName: (ctx) => UserDetailScreen(),
          CommentsScreen.routeName: (ctx) => CommentsScreen(),
          PhotoScreen.routeName: (ctx) => PhotoScreen(),
          PhotoDetail.routeName: (ctx) => PhotoDetail(),
        },
      ),
    );
  }
}
