import 'package:blog_application/provider/post_provider.dart';
import 'package:blog_application/provider/user_provider.dart';
import 'package:blog_application/screens/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserPostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fetch = Provider.of<Users>(context, listen: false);

    return FutureBuilder(
      future: fetch.fetchUser(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            padding: EdgeInsets.only(top: 15, bottom: 30),
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, PostScreen.routeName, arguments: fetch.users[index].id);
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 7, left: 10, right: 10, bottom: 4),
                    width: double.infinity - 30,
                    color: Colors.white,
                    height: 80,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            "assets/images/image1.png",
                            fit: BoxFit.fill,
                          ),
                          title: Text(
                            fetch.users[index].name,
                            style: TextStyle(
                              fontFamily: "font2",
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Click to see posts",
                            style: TextStyle(
                              fontFamily: "font1",
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: fetch.users.length,
            ),
          );
        }
        else if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          );
        } else {
          return Text(snapshot.error.toString());
        }
      },
    );
  }
}
