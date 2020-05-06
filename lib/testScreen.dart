import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
import './pages/header/myDrawer.dart';
import 'dart:math' as math;

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

// class _TestScreenState extends State<TestScreen>
//     with SingleTickerProviderStateMixin {
//   final tabList = ['全部', '前端', '服务端', '构建工具', '数据库', '后端', '系统架构'];
//   TabController _tabController;

//   @override
//   void initState() {
//     _tabController = TabController(vsync: this, length: tabList.length);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('西门互联'),
//         centerTitle: true,
//         bottom: TabBar(
//           isScrollable: true, //横向滚动
//           controller: _tabController,
//           tabs: tabList.map((item) {
//             return Tab(
//               text: item,
//             );
//           }).toList(),
//           onTap: (int i) {
//             print(i);
//           },
//         ),
//       ),
//       drawer: new MyDrawer(), //menu
//       body: TabBarView(
//         controller: _tabController,
//         children: tabList.map((item) {
//           return Center(child: Text(item));
//         }).toList(),
//       ),
//     );
//   }
// }

//不能横滚 加入 tabbar isScrollable: true, //横向滚动
class _TestScreenState extends State<TestScreen>
    with SingleTickerProviderStateMixin {
  final tabList = ['全部', '前端', '服务端', '构建工具', '数据库', '后端', '系统架构'];
  final navTab = [
    {"type": 0, "name": "全部"},
    {"type": 1, "name": "web前端"},
    {"type": 2, "name": "服务端"},
    {"type": 3, "name": "构建工具"},
    {"type": 4, "name": "数据库"},
    {"type": 5, "name": "后端开发"},
    {"type": 6, "name": "系统架构"}
  ];
  int selectedIndex = 0;
  TabController _tabController;

  void _onTabChanged() {
    if (this.mounted) {
      this.setState(() {
        if (_tabController.index >= 0) {
          selectedIndex = _tabController.index;
        }
      });
    }
  }

  Future _onRefresh() async {}

  Future getMoreData() async {}

  Widget _articleList(BuildContext context, int selectedIndex) {
    var row = Row(
      children: <Widget>[
        DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Container(
              margin: EdgeInsets.only(left: 4, right: 4),
              child: Transform(
                transform: Matrix4.skewX(-0.2),
                origin: Offset(0, 0),
                child: Text('系统架构',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        backgroundColor: Color.fromARGB(200, 131, 207, 1),
                        fontSize: 10.0)),
              ),
            )),
        Icon(
          Icons.comment,
          color: Color(0xFF959595).withOpacity(1),
          size: 18.0,
        ),
        Text('100',
            style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1), fontSize: 12.0)),
        Icon(
          Icons.grade,
          color: Color(0xFF959595).withOpacity(1),
          size: 18.0,
        ),
        Text('100',
            style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1), fontSize: 12.0)),
        Icon(
          Icons.visibility,
          color: Color(0xFF959595).withOpacity(1),
          size: 18.0,
        ),
        Text('100',
            style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1), fontSize: 12.0)),
        Text(
          '2020-04-30',
          style: TextStyle(
              color: Color.fromRGBO(153, 153, 153, 1), fontSize: 12.0),
        ),
      ],
    );
    return GestureDetector(
        onTap: () {
          print('跳转文章到详情传递id');
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 10, left: 6, right: 6),
          padding: EdgeInsets.all(0), //容器外填充
          height: 270.0,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 150,
                child: Image(
                  //本地静态图片
                  // image: AssetImage('assets/images/wechat.jpg'),
                  image: NetworkImage(
                      'https://eux-public.bj.bcebos.com/2018/07/26/npm%20aduit-0.jpg'),
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                child: Text('微信小程序架构原理',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(85, 85, 85, 1),
                        fontSize: 14.0)),
              ),
              SizedBox(height: 8.0),
              Container(
                child: Text(
                    '333333333333333微信小程序架构原理微信小程序架构原理微信小程序架构原理333333333333333微信小程序架构原理微信小程序架构原理微信小程序架构原理',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color.fromRGBO(140, 140, 140, 0.9),
                        fontSize: 12.0)),
              ),
              SizedBox(height: 6.0),
              Container(
                // padding: EdgeInsets.only(left: 20),
                child: row,
              )
            ],
          ),
        ));
  }

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabList.length);
    super.initState();
    _tabController.addListener(() => _onTabChanged());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('西门互联'),
        centerTitle: true,
        elevation: 0, // 隐藏阴影
        //后面放置图标
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search');
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true, //横向滚动
          unselectedLabelStyle: TextStyle(
            color: Color(0xff333333),
            fontSize: 12.0,
          ),
          labelStyle: TextStyle(color: Color(0xff333333), fontSize: 14.0),
          //有点的
          // indicator: PointTabIndicator(
          //   position: PointTabIndicatorPosition.bottom,
          //   color: Colors.white,
          //   insets: EdgeInsets.only(bottom: 6),
          // ),
          //去掉样式
          indicator: const BoxDecoration(),
          tabs: tabList.map((item) {
            return Tab(
              text: item,
            );
          }).toList(),
        ),
      ),
      drawer: new MyDrawer(), //menu
      body: TabBarView(
        controller: _tabController,
        children: tabList.map((item) {
          // return Container(child: Text(selectedIndex.toString()));
          return Scrollbar(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return _articleList(context, selectedIndex);
                  }));
        }).toList(),
      ),
    );
  }
}
