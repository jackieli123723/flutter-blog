import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PersonProductInfo extends StatefulWidget {
  PersonProductInfo({Key key, this.url, this.title}) : super(key: key);

  final String url;
  final String title;

  @override
  _PersonProductInfoState createState() => _PersonProductInfoState();
}

class _PersonProductInfoState extends State<PersonProductInfo> {
  bool isLoading = true;
  final _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        // bottomNavigationBar: BottomNavigatorTab(tabIndex:2), //footer 导航栏
        // body: WebView(
        //   initialUrl: url,
        //   javascriptMode: JavascriptMode.unrestricted,
        // ));
        body: Stack(children: <Widget>[
          WebView(
            key: _key,
            initialUrl: widget.url,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                )
              : Container(color: Colors.transparent),
        ]));
  }
}
