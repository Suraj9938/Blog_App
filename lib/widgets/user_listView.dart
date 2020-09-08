import 'package:flutter/material.dart';

class UserListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      itemBuilder: (ctx, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(38),
          child: Card(
            color: Colors.orange[200],
            margin: EdgeInsets.only(top: 9, bottom: 9, left: 6, right: 6),
            child: Row(
              children: <Widget>[
                Container(
                  child: InkWell(
                    onTap: () {
                    },
                    child: Image.asset(
                      "assets/images/image1.png",
                      fit: BoxFit.fill,
                      width: 160,
                      height: 170,
                    ),
                  ),
                ),
                Container(
                  width: 168,
                ),
              ],
            ),
          ),
        );
      },
      itemCount: 5,
    );
  }
}
