import 'package:blog_application/model/user.dart';
import 'package:blog_application/provider/user_provider.dart';
import 'package:blog_application/screens/user_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fetch = Provider.of<Users>(context, listen: false);

    return FutureBuilder(
      future: fetch.fetchUser(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            itemBuilder: (ctx, index) {
              // print(fetch.users[index].name);
              return ClipRRect(
                borderRadius: BorderRadius.circular(38),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, UserDetailScreen.routeName, arguments: fetch.users[index].id);
                  },
                  child: Card(
                    color: Colors.orange[200],
                    margin:
                        EdgeInsets.only(top: 9, bottom: 9, left: 6, right: 6),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Image.asset(
                            "assets/images/image1.png",
                            fit: BoxFit.fill,
                            width: 160,
                            height: 170,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: 180,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  fetch.users[index].name,
                                  style: TextStyle(
                                    fontFamily: "font2",
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  fetch.users[index].company.name,
                                  style: TextStyle(
                                    fontFamily: "font2",
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: 10, bottom: 10, left: 5, right: 8),
                                    color: Colors.blue,
                                    child: Text(
                                      fetch.users[index].email,
                                      style: TextStyle(
                                        fontFamily: "font2",
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: fetch.users.length,
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
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
