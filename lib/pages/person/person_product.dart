import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

String vueUrl = 'http://iph.href.lu/50x50?text=v&fg=fff&bg=000';
String nodeUrl = 'http://iph.href.lu/50x50?text=n&fg=fff&bg=333';

class PersonProduct extends StatelessWidget {
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
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(nodeUrl),
              ),
              title: Text('node-cli-weather'),
              subtitle: Text('一个node天气预报cli工具 '),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                WebView(
                    initialUrl: "http://baidu.com",
                    //JS执行模式 是否允许JS执行
                    javascriptMode: JavascriptMode.unrestricted);
              },
            ),
          ],
        )));
  }
}
