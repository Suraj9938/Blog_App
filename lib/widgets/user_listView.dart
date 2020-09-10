import 'package:blog_application/model/user.dart';
import 'package:blog_application/provider/user_provider.dart';
import 'package:blog_application/screens/user_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class UserListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fetch = Provider.of<Users>(context);

    return FutureBuilder(
      future: fetch.fetchUser(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            itemBuilder: (ctx, index) => ClipRRect(
              borderRadius: BorderRadius.circular(38),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, UserDetailScreen.routeName);
                },
                child: Card(
                  color: Colors.orange[200],
                  margin: EdgeInsets.only(top: 9, bottom: 9, left: 6, right: 6),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Suraj Lal Shrestha",
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
                              "Islington",
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
                                    "surajlal@gmail.com",
                                    style: TextStyle(
                                      fontFamily: "font2",
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //fetch.user[index].toString(),
            itemCount: fetch.toString().length,
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
