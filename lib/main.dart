// //way1
import 'package:flutter/material.dart';
import './home.dart';
import './pages/comment/comment.dart';
import './pages/person/person_info.dart';
import './pages/person/person_product.dart';
import './pages/person/person_work.dart';
import 'dart:async';

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
        primarySwatch: Colors
            .blue, // or Colors.green or any color darker than white (this is line 66)
        accentColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false, //去掉右上角debug
      home: new SplashScreen(),
      // initialRoute: "/home", //不能和SplashScreen同时使用
      routes: {
        "/home": (context) => Home(),
        '/work': (context) => PersonWork(),
        "/about": (context) => PersonInfo(),
        "/product": (context) => PersonProduct(),
        "/comment": (context) => Comment(),
      },
    );
  }
}

//这可以适配吗
class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    //不能为/ 必须有个/XXX
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('assets/images/flutterwithlogo.png'),
      ),
    );
  }
}

//way2 StatefulWidget flutter_splash_screen
// import 'package:flutter/material.dart';
// import './home.dart';
// import './pages/comment/comment.dart';
// import './pages/person/person_info.dart';
// import './pages/person/person_product.dart';
// import './pages/person/person_work.dart';
// import 'dart:async';
// import 'package:flutter_splash_screen/flutter_splash_screen.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//     hideScreen();
//   }

//   ///hide your splash screen
//   Future<void> hideScreen() async {
//     Future.delayed(Duration(milliseconds: 3600), () {
//       FlutterSplashScreen.hide();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '西门互联',
//       theme: ThemeData(
//         // primarySwatch: Colors.blue,
//         brightness: Brightness.light,
//         // primaryColor: Colors.white,//tabbar 白色
//         primarySwatch: Colors
//             .blue, // or Colors.green or any color darker than white (this is line 66)
//         accentColor: Colors.black,
//       ),
//       debugShowCheckedModeBanner: false, //去掉右上角debug
//       initialRoute: "/home",
//       routes: {
//         "/home": (context) => Home(),
//         '/work': (context) => PersonWork(),
//         "/about": (context) => PersonInfo(),
//         "/product": (context) => PersonProduct(),
//         "/comment": (context) => Comment(),
//       },
//     );
//   }
// }
