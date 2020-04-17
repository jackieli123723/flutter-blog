import 'package:flutter/material.dart';
import './person_product_info.dart';

class PersonProduct extends StatefulWidget {
  @override
  _PersonProductState createState() => _PersonProductState();
}

class _PersonProductState extends State<PersonProduct> {
  final String vueUrl = 'http://iph.href.lu/50x50?text=v&fg=fff&bg=000';
  final String nodeUrl = 'http://iph.href.lu/50x50?text=n&fg=fff&bg=333';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("开源作品"),
        ),
        body: new Container(
            child: new ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(vueUrl),
              ),
              title: Text('vue-table-pagination'),
              subtitle: Text('vue2封装的table联动组件'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url:
                        "https://github.com/jackieli123723/vue-table-pagination",
                    title: "vue2封装的table联动组件",
                  );
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(nodeUrl),
              ),
              title: Text('node-cli-weather'),
              subtitle: Text('node天气预报cli工具 '),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url: "https://github.com/jackieli123723/ci",
                    title: "天气预报cli工具",
                  );
                }));
              },
            ),
          ],
        )));
  }
}
