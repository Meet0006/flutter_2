import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter New App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MeeT's Flutter Project"),
      ),
      body: Container(
        child: Center(child: Text("HEllo MEEt")),
      ),
    );
  }
}
