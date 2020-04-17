import 'package:flutter/material.dart';

class PersonInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("个人信息"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("jackieli--web前端开发工程师"),
      ),
    );
  }
}
