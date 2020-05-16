import 'package:flutter/material.dart';
import './home.dart';
import './pages/comment/comment.dart';
import './pages/person/person_info.dart';
import './pages/person/person_product.dart';
import './pages/person/person_work.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '西门互联',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        brightness: Brightness.light,
        // primaryColor: Colors.white,//tabbar 白色
        primarySwatch: Colors.blue, // or Colors.green or any color darker than white (this is line 66)
        accentColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false, //去掉右上角debug
      // home: Home(),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        '/work':(context) => PersonWork(),
        "/about": (context) => PersonInfo(),
        "/product": (context) => PersonProduct(),
        "/comment": (context) => Comment(),
      },
    );
  }
}
