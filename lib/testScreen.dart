import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
import './pages/header/myDrawer.dart';

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
    return GestureDetector(
        onTap: () {
          print('跳转文章到详情传递id');
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 10, left: 6, right: 6),
          padding: EdgeInsets.all(0), //容器外填充
          height: 230.0,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 150,
                child: Image(
                  image: AssetImage('assets/images/wechat.jpg'),
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                child: Text('微信小程序架构原理',
                    style: TextStyle(
                        color: Color.fromRGBO(85, 85, 85, 1), fontSize: 14.0)),
              ),
              SizedBox(height: 4.0),
              Container(
                // padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: <Widget>[
                    Text('by.jackieli',
                        style: TextStyle(
                            color: Color.fromRGBO(153, 153, 153, 1),
                            fontSize: 12.0)),
                    Text(' / ',
                        style: TextStyle(
                            color: Color.fromRGBO(153, 153, 153, 1),
                            fontSize: 12.0)),
                    Text('2020-04-30',
                        style: TextStyle(
                            color: Color.fromRGBO(153, 153, 153, 1),
                            fontSize: 12.0)),
                    Text('前端',
                        style: TextStyle(
                            color: Color.fromRGBO(153, 153, 153, 1),
                            fontSize: 12.0)),
                    Text(' / ',
                        style: TextStyle(
                            color: Color.fromRGBO(153, 153, 153, 1),
                            fontSize: 12.0)),
                    Text('2020-04-30',
                        style: TextStyle(
                            color: Color.fromRGBO(153, 153, 153, 1),
                            fontSize: 12.0)),
                    Text('前端',
                        style: TextStyle(
                            color: Color.fromRGBO(153, 153, 153, 1),
                            fontSize: 12.0))
                  ],
                ),
              )
              // ConstrainedBox(
              //   child: Image.asset(
              //     'assets/images/wechat.jpg',
              //     height: 150,
              //     fit: BoxFit.cover,
              //   ),
              //   constraints: new BoxConstraints.expand(),
              // )
            ],
          ),
          // child: Text(
          //   //卡片文字
          //   "文章列表", style: TextStyle(color: Colors.red, fontSize: 20.0),
          // ),
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
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true, //横向滚动
          indicator: PointTabIndicator(
            position: PointTabIndicatorPosition.bottom,
            color: Colors.white,
            insets: EdgeInsets.only(bottom: 6),
          ),
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
