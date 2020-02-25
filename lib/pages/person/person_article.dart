// class CreatArtilce extends StatefulWidget {
//   @override
//   _CreatArtilceState createState() => _CreatArtilceState();
// }

// class _CreatArtilceState extends State<CreatArtilce> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
// class CreatArticle extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
import 'package:flutter/material.dart';

class PersonArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("添加文章"),
      ),
      body: Center(
        child: Text("添加文章"),
      ),
    );
  }
}
