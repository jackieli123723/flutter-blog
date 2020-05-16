import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../commons/bottom_navigation_bar.dart';

class PersonProductInfo extends StatelessWidget {
  PersonProductInfo({Key key, this.url, this.title}) : super(key: key);

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigatorTab(tabIndex:2), //footer 导航栏
        body: WebView(
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
