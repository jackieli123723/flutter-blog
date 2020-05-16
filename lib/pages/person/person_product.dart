import 'package:flutter/material.dart';
import './person_product_info.dart';
import '../../commons/bottom_navigation_bar.dart';
class PersonProduct extends StatefulWidget {
  @override
  _PersonProductState createState() => _PersonProductState();
}

class _PersonProductState extends State<PersonProduct> {
  final String vueUrl = 'http://iph.href.lu/50x50?text=v&fg=fff&bg=000';
  final String nodeUrl = 'http://iph.href.lu/50x50?text=n&fg=fff&bg=333';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("开源作品"),
        //   //  leading: Text(''),
        //    automaticallyImplyLeading:false,
        // ),
        bottomNavigationBar: BottomNavigatorTab(tabIndex:2), //footer 导航栏
        body: SafeArea(
            child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(vueUrl),
              ),
              title: Text('vue-table-pagination'),
              subtitle: Text('vue2封装的table联动组件'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url:
                        "https://github.com/jackieli123723/vue-table-pagination",
                    title: "vue2封装的table联动组件",
                  );
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(nodeUrl),
              ),
              title: Text('vue-table-pagination-demo'),
              subtitle: Text('基于vue2的分页插件演示 '),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url: "https://github.com/jackieli123723/vue-table-pagination-demo",
                    title: "vue-table-pagination演示",
                  );
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(vueUrl),
              ),
              title: Text('nuxt-blog'),
              subtitle: Text('西门互联nuxt版本博客'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url:
                        "https://github.com/jackieli123723/nuxt-blog",
                    title: "西门互联nuxt版本博客",
                  );
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(nodeUrl),
              ),
              title: Text('wechat-blog'),
              subtitle: Text('西门互联小程序博客'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url: "https://github.com/jackieli123723/wechat-blog",
                    title: "西门互联小程序博客",
                  );
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(vueUrl),
              ),
              title: Text('JackieliIssueBlog'),
              subtitle: Text('vue+github的issue搭建的博客'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url:
                        "https://github.com/jackieli123723/JackieliIssueBlog",
                    title: "vue+github的issue搭建的博客",
                  );
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(nodeUrl),
              ),
              title: Text('blog-spider'),
              subtitle: Text('基于Node+Socket文章爬虫系统'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url: "https://github.com/jackieli123723/blog-spider",
                    title: "基于Node+Socket文章爬虫系统",
                  );
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(nodeUrl),
              ),
              title: Text('REACT-PC-MOBILE-CLI'),
              subtitle: Text('react-pc和移动端脚手架'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url: "https://github.com/jackieli123723/REACT-PC-MOBILE-CLI",
                    title: "react-pc和移动端脚手架",
                  );
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(nodeUrl),
              ),
              title: Text('VUE-PC-MOBILE-CLI'),
              subtitle: Text('vue 移动端和pc端脚手架 '),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url: "https://github.com/jackieli123723/VUE-PC-MOBILE-CLI",
                    title: "vue 移动端和pc端脚手架",
                  );
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(nodeUrl),
              ),
              title: Text('node-website-monitoring'),
              subtitle: Text('网站异常监控发送邮件及时排查错误修复'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url: "https://github.com/jackieli123723/node-website-monitoring",
                    title: "网站异常监控发送邮件及时排查错误修复",
                  );
                }));
              },
            ),
             ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(nodeUrl),
              ),
              title: Text('auto-build'),
              subtitle: Text('基于Node前端自动化部署'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url: "https://github.com/jackieli123723/auto-build",
                    title: "基于Node前端自动化部署",
                  );
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(nodeUrl),
              ),
              title: Text('vue-node-full-stack-share'),
              subtitle: Text('vue+node全栈开发'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url: "https://github.com/jackieli123723/vue-node-full-stack-share",
                    title: "vue+node全栈开发",
                  );
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(nodeUrl),
              ),
              title: Text('blog-spider'),
              subtitle: Text('基于Node+Socket文章爬虫系统❤️⭐❤️ '),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //跳转到webview
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PersonProductInfo(
                    url: "https://github.com/jackieli123723/blog-spider",
                    title: "基于Node+Socket文章爬虫系统❤️⭐❤️",
                  );
                }));
              },
            ),
          ],
        )));
  }
}
