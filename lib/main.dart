import 'package:flutter/material.dart';
import 'package:flutter_2/pages/home_page.dart';
import 'package:flutter_2/pages/login_page.dart';
import 'package:flutter_2/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
      title: "Flutter New App", 
      
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.getBool("login in") == true
          ? HomePage()
          : LoginPage(),
      theme: ThemeData(
        accentColor: Colors.indigo,
      ),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    ),
  );
}
