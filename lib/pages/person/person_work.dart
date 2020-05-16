import 'package:flutter/material.dart';
import '../../commons/bottom_navigation_bar.dart';
 

 class PersonWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("作品"),
      // ),
       backgroundColor: const Color(0xFFE9E9E9),
      bottomNavigationBar: BottomNavigatorTab(tabIndex:1), //footer 导航栏
      body: Center(
        child: Text("作品"),
      ),
    );
  }
}
