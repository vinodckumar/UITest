import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double radius;
  final String url;
  final displayBorder;

  ProfileImage({this.radius, this.url, this.displayBorder});

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.pinkAccent,
      elevation: 4.0,
      shape: CircleBorder(),
      child: Container(
        width: radius,
        height: radius,
        decoration: new BoxDecoration(
          border: displayBorder != null && displayBorder
              ? Border.all(color: Colors.white)
              : null,
          shape: BoxShape.circle,
          image: new DecorationImage(
            fit: BoxFit.cover,
            image: new NetworkImage(
              url,
            ),
          ),
        ),
      ),
    );
  }
}