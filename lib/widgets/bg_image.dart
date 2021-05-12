import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/bg.jpg",
      height: 250,
      width: 250,
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.6),
      colorBlendMode: BlendMode.darken,
      // width: 150,
    );
  }
}
