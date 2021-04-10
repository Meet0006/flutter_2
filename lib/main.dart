import 'package:flutter/material.dart';
import 'package:flutter_2/pages/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter New App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        accentColor: Colors.red[200],
      ),
    ),
  );
}
