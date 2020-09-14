import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhotoDetail extends StatelessWidget {
  static const routeName = "/photo_detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("accusamus beatae ad facilis cum similique qui sunt"),
      ),
      body: Container(
        color: Colors.blue[400],
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 60,
                ),
                child: Column(
                  children: [
                    Image.network(
                      "https://via.placeholder.com/600/92c952",
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 30,
                        left: 4,
                      ),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "https://via.placeholder.com/150/92c952",
                        style: TextStyle(
                            fontFamily: "font1",
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
