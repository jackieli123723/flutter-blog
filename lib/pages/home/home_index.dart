import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../pages/header/myDrawer.dart';
import '../../pages/search/search.dart';
import '../../pages/article/article_list.dart';
// import '../../commons/bottom_navigation_bar.dart';
import '../../api/httpUtil.dart';
import '../../api/api.dart';
import 'dart:convert';
import 'dart:core';

class HomeIndex extends StatefulWidget {
  @override
  _HomeStateHomeIndex createState() => _HomeStateHomeIndex();
}

//不能横滚 加入 tabbar isScrollable: true, //横向滚动
class _HomeStateHomeIndex extends State<HomeIndex>
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

  List articleDatas;
  void fetchArticleListData() async {
    var data = {
      'title': '',
      'type': 0,
      'page': 1,
      'pageSize': 10,
    };

    try {
      //article
      var articleData = await HttpUtil().post(Api.ARTICLE_LIST, data: data);
      Map articleMap = json.decode(articleData.toString());

      print('wenzang');
      print(articleMap.length);
      print('wenzang');
      // setState(() {
      //   articleDatas = articleMap.data.data.list;
      // });
    } catch (e) {
      print(e);
    }
  }

  Future fetchData() async {
    fetchArticleListData();
    print('fetchData data');
  }

  Future onRefresh() async {}

  Future getMoreData() async {}

  Future goTop() async {}

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabList.length);
    super.initState();
    _tabController.addListener(() => _onTabChanged());
    // fetchData();
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
            tooltip: '搜索',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Search();
              }));
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
          //有点的自定义样式或者默认下划线
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
      drawer: new MyDrawer(), //menu 侧边栏
      resizeToAvoidBottomPadding: false, //输入框抵住键盘
      body: TabBarView(
        controller: _tabController,
        children: tabList.map((item) {
          // return Container(child: Text(selectedIndex.toString()));
          return Scrollbar(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return ArticleList();
                  }));
        }).toList(),
      ),
    );
  }
}
