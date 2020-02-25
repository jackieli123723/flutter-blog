import 'package:flutter/material.dart';
import '../person/person_article.dart';
import '../person/person_product.dart';
import '../person/person_info.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        //移除抽屉菜单顶部默认留白
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/my.png', //可以把参考webpack ailis 来设置一个全局的路径
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "Jackieli",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                      leading: const Icon(Icons.info),
                      title: const Text('个人信息'),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PersonInfo();
                        }));
                      }),
                  ListTile(
                      leading: const Icon(Icons.card_giftcard),
                      title: const Text('开源作品'),
                      onTap: () {
                        //导航到新路由
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PersonProduct();
                        }));
                      }),
                  ListTile(
                      leading: const Icon(Icons.add),
                      title: const Text('添加文章'),
                      onTap: () {
                        //导航到新路由
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PersonArticle();
                        }));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
