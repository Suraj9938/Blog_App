import 'package:flutter/material.dart';

class CommentsDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 4,
        right: 4,
      ),
      width: double.infinity - 20,
      height: 200,
      color: Colors.blue[400],
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/image1.png",
                ),
                title: Text(
                  "id labore ex et quam laborum",
                  style: TextStyle(
                    fontFamily: "font1",
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Eliseo@gardner.biz",
                  style: TextStyle(
                    fontFamily: "font1",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 25,
                right: 10,
              ),
              child: Text(
                "laudantium enim quasi est quidem magnam voluptate ipsam eos tempora quo necessitatibus dolor quam autem quasi reiciendis et nam sapiente accusantium",
                style: TextStyle(
                  fontFamily: "font1",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
