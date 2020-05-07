import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("评论"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("jackieli--web前端开发工程师"),
      ),
    );
  }
}
