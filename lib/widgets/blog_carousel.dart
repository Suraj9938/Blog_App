import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class BlogCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      child: Carousel(
        autoplayDuration: Duration(seconds: 2),
        animationDuration: Duration(seconds: 1),
        autoplay: true,
        images: [
          Image.asset(
            "assets/images/blog1.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/blog2.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/blog3.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
