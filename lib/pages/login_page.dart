//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_2/widgets/bg_image.dart';
import 'package:flutter_2/utils/Constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: [
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter Username",
                                    labelText: "Username"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password",
                                  hoverColor: Colors.red,
                                ),
                              )
                            ],
                          ),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        // ignore: deprecated_member_use
                        Padding(
                          padding: const EdgeInsets.all(.0),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            onPressed: () {
                              Constants.prefs.setBool("login in", true);
                              Navigator.pushReplacementNamed(context, "/home");
                            },
                            child: Text("Sign in"),
                            color: Colors.blue[200],
                            textTheme: ButtonTextTheme.accent,
                            textColor: Colors.black,
                            hoverColor: Colors.cyan,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
