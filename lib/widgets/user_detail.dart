import 'package:blog_application/model/user.dart';
import 'package:blog_application/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = Provider.of<Users>(context, listen: false).users;
    final userId = ModalRoute.of(context).settings.arguments as int;
    final user = users.singleWhere((usr) => usr.id == userId);

    // print("Users :");
    // print(user.name);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 18, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              user.name,
              //user.name.toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: "font1",
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 9,
                        right: 12,
                        left: 12,
                      ),
                      color: Colors.orange[400],
                      child: Text(
                        user.username,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "font2",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 9,
                        right: 12,
                        left: 12,
                      ),
                      color: Colors.orange[400],
                      child: Text(
                        user.email,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "font2",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Address",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: "font1",
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.orange[300],
                height: 340,
                width: MediaQuery.of(context).size.width - 30,
                padding: EdgeInsets.only(top: 14, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Street    => ",
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          user.address.street,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          "Suite     => ",
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          user.address.suite,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          "City       => ",
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          user.address.city,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          "ZipCode => ",
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          user.address.zipcode,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Container(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        height: 120,
                        width: 280,
                        color: Colors.yellow[300],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Geo",
                              style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: "font1",
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  "   Lat  => ",
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: "font1",
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  user.address.geo.lat,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: "font1",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "   Lng => ",
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: "font1",
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  user.address.geo.lng,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: "font1",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Phone    => ",
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          user.phone,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          "Website  => ",
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          user.website,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Company",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: "font1",
              ),
            ),
            SizedBox(
              height: 14,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.orange[300],
                height: 260,
                width: MediaQuery.of(context).size.width - 30,
                padding: EdgeInsets.only(top: 14, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Name => ",
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          user.company.name,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "font1",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          "BS       => ",
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontFamily: "font1",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          user.company.bs,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontFamily: "font1",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Container(
                        padding: EdgeInsets.only(top: 18, left: 15),
                        height: 158,
                        width: 300,
                        color: Colors.yellow[300],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Catch Phrase ",
                              style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: "font1",
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Container(
                                padding: EdgeInsets.only(top: 10, left: 14),
                                height: 75,
                                width: 250,
                                color: Colors.amberAccent,
                                child: Text(
                                  user.company.catchPhrase,
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: "font1",
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
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
