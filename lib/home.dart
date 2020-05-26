import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './pages/home/home_index.dart';
import './pages/person/person_work.dart';
import './pages/person/person_product.dart';
import './pages/person/person_info.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> bottomList = [
    HomeIndex(),
    PersonWork(),
    PersonProduct(),
    PersonInfo(),
  ];

  final List<BottomNavigationBarItem> _listItem = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('文章')),
    BottomNavigationBarItem(
        icon: Icon(Icons.remove_from_queue), title: Text('作品')),
    BottomNavigationBarItem(
        icon: Icon(Icons.bookmark_border), title: Text('开源')),
    BottomNavigationBarItem(
        icon: Icon(Icons.person_outline), title: Text('关于')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: _listItem,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
      body: bottomList[_currentIndex],
    );
  }
}
