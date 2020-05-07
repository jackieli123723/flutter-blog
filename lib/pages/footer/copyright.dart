import 'package:flutter/material.dart';

class CopyRight extends StatelessWidget {
  const CopyRight({Key key, this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
              '© 2020  west gate internet \r\nPowered by Flutter \r\nCC BY-NC-SA 4.0')
        ],
      ),
    );
  }
}
