import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文章检索"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("文章检索"),
      ),
    );
  }
}
