import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PersonProduct extends StatelessWidget {
  final String vueUrl = 'http://iph.href.lu/50x50?text=v&fg=fff&bg=000';
  final String nodeUrl = 'http://iph.href.lu/50x50?text=n&fg=fff&bg=333';
  final String _url = "http://baidu.com";

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

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
                print('test');
                WebView(
                    // initialUrl: _url,
                    // //JS执行模式 是否允许JS执行
                    // javascriptMode: JavascriptMode.unrestricted,
                    // onWebViewCreated: (WebViewController webViewController) {
                    //   _controller.complete(webViewController);
                    // },
                    // navigationDelegate: (NavigationRequest request) {
                    //   // 判断URL
                    //   return NavigationDecision.navigate;
                    // },
                    );
              },
            ),
          ],
        )));
  }
}
