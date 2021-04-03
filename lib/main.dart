import 'package:flutter/cupertino.dart';
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
        title: Text("MeeT's Project"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.teal,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    color: Colors.red),
                Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    color: Colors.blue),
                Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    color: Colors.green),
                Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    color: Colors.yellow),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
