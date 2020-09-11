import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhotoDetail extends StatelessWidget {
  static const routeName = "/photo_detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Container(
        color: Colors.blue[400],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  bottom: 40,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      child: Image.network(
                          "https://via.placeholder.com/600/92c952")),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 10),
                child: Column(
                  children: [
                    Text(
                      "accusamus beatae ad facilis cum similique qui sunt",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "font2",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "https://via.placeholder.com/150/92c952",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "font2",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
