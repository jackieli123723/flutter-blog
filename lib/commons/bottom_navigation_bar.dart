// import 'dart:html';

import 'package:flutter/material.dart';
import '../home.dart';
import '../pages/person/person_info.dart';
import '../pages/person/person_product.dart';
import '../pages/person/person_work.dart';

class BottomNavigatorTab extends StatefulWidget {
  BottomNavigatorTab({
    Key key,
    this.tabIndex = 0,
  }) : super(key: key);
  final int tabIndex;
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigatorTab> {
  int _currentIndex = 0;
  final List<Widget> bottomList = [
    Home(),
    PersonWork(),
    PersonProduct(),
    PersonInfo()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> _listItem = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: InkWell(
            borderRadius: BorderRadius.circular(10),
            splashColor: Colors.blue,
            child: Icon(
              Icons.home,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          title: Text('首页')),
      BottomNavigationBarItem(
          icon: InkWell(
            child: Icon(
              Icons.remove_from_queue,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/work');
            },
          ),
          title: Text(
            "作品",
          )),
      BottomNavigationBarItem(
        icon: InkWell(
            child: Icon(
              Icons.bookmark_border,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/product');
            }),
        title: Text('开源'),
      ),
      BottomNavigationBarItem(
          icon: InkWell(
            child: Icon(
              Icons.person_outline,
            ),
            onTap: () {
              //way1
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return PersonInfo();
              // }));

              //way2
              Navigator.pushNamed(context, '/about');
            },
          ),
          title: Text(
            "关于",
          )),
    ];
    return BottomNavigationBar(
      items: _listItem,
      backgroundColor: Color(0xFFFAFAFA),
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      // currentIndex: _currentIndex,
      currentIndex: widget.tabIndex, //tabindex如何纯涤进来
      onTap: _onItemTapped,
    );
  }
}

// //https://material.io/tools/icons/
