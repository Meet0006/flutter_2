import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/bg.jpg",
      height: 250,
      width: 250,
      fit: BoxFit.cover,
      // width: 150,
    );
  }
}
