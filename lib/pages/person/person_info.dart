import 'package:flutter/material.dart';
// import '../../commons/bottom_navigation_bar.dart';

class PersonInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("个人信息"),
      //   centerTitle: true,
      // ),
      backgroundColor: const Color(0xFFE9E9E9),
      // bottomNavigationBar: BottomNavigatorTab(tabIndex: 3), //footer 导航栏
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset("assets/images/my.png"),
                    Image.asset("assets/images/my.png"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text("jackeili,"),
                Text("web前端开发工程师"),
                ClipOval(
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/loading.gif',
                    fit: BoxFit.fitWidth,
                    image:
                        "https://avatars1.githubusercontent.com/u/10346511?v=4",
                    width: 160.0,
                    height: 160.0,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
