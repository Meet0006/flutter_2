import 'package:flutter/material.dart';
import 'package:flutter_2/utils/Constants.dart';
import 'package:http/http.dart' as http;
import '../widgets/drawer.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(
        "http://www.json-generator.com/api/json/get/ceLPZGSzyq?indent=2"));
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        shadowColor: Colors.black,
        title: Text("MeeT's Project"),
        actions: [
          IconButton(
            icon: Icon(Icons.login),
            onPressed: () {
              Constants.prefs.setBool("loggin", false);
              Navigator.pushReplacementNamed(context, "/login");
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  // var data = datas[index];
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      subtitle: Text("ID: ${data[index]["id"]}"),
                      leading: Image.network(
                        data[index]["url"],
                        fit: BoxFit.contain,
                        //height: 400,
                        //width: 200,
                      ),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //myText = _nameController.text;
          //setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}