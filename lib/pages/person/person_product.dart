import 'package:flutter/material.dart';

class PersonProduct extends StatelessWidget {
  String horseUrl = 'https://i.stack.imgur.com/Dw6f7.png';
  String cowUrl = 'https://i.stack.imgur.com/XPOr3.png';
  String camelUrl = 'https://i.stack.imgur.com/YN0m7.png';
  String sheepUrl = 'https://i.stack.imgur.com/wKzo8.png';
  String goatUrl = 'https://i.stack.imgur.com/Qt4JP.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("开源作品"),
        ),
        // body: Center(
        //   child: Text("jackieli--开源作品"),
        // ),
        body: new Container(
            child: new ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(horseUrl),
              ),
              title: Text('vue-table-pagination'),
              subtitle: Text('vue2封装的table联动组件'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print('horse');
              },
              selected: false,
            ),
          ],
        )));
  }
}
