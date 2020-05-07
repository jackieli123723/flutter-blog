import 'package:flutter/material.dart';
// import '../../model/article.dart';
import './article_detial.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var row = Row(
      children: <Widget>[
        Expanded(
          child: Stack(
            fit: StackFit.loose,
            alignment: AlignmentDirectional.topStart,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Container(
                      margin: EdgeInsets.only(left: 4.0, right: 4.0),
                      child: Transform(
                        transform: Matrix4.skewX(-0.2),
                        origin: Offset(0, 0),
                        child: Text('系统架构',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                backgroundColor:
                                    Color.fromARGB(200, 131, 153, 1),
                                fontSize: 10.0)),
                      ),
                    )),
              ),
              Positioned(
                left: 55,
                top: 2,
                bottom: 0,
                child: Row(children: <Widget>[
                  Icon(
                    Icons.comment,
                    color: Color(0xFF959595).withOpacity(1),
                    size: 15.0,
                  ),
                  Text('10',
                      style: TextStyle(
                          color: Color.fromRGBO(153, 153, 153, 1),
                          fontSize: 12.0)),
                ]),
              ),
              Positioned(
                left: 98,
                top: 1,
                bottom: 0,
                child: Row(children: <Widget>[
                  Icon(
                    Icons.grade,
                    color: Color(0xFF959595).withOpacity(1),
                    size: 15.0,
                  ),
                  Text('100',
                      style: TextStyle(
                          height: 1.3,
                          color: Color.fromRGBO(153, 153, 153, 1),
                          fontSize: 12.0)),
                ]),
              ),
              Positioned(
                left: 148,
                top: 1,
                bottom: 0,
                child: Row(children: <Widget>[
                  Icon(
                    Icons.visibility,
                    color: Color(0xFF959595).withOpacity(1),
                    size: 15.0,
                  ),
                  Text('100',
                      style: TextStyle(
                          height: 1.3,
                          color: Color.fromRGBO(153, 153, 153, 1),
                          fontSize: 12.0)),
                ]),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '2020-04-30',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.45), fontSize: 12.0),
                ),
              ),
              //等价于下面
              // Positioned(
              //   right: 0,
              //   top: 0,
              //   bottom: 0,
              //   child: Text(
              //     '2020-04-30',
              //     style: TextStyle(
              //         color: Color.fromRGBO(0, 0, 0, 0.45), fontSize: 12.0),
              //   ),
              // )
            ],
          ),
        ),
      ],
    );
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ArticleDetial();
          }));
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 10.0, left: 6.0, right: 6.0),
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10), //容器外填充
          // height: 255.0,//不用设置高度自适应
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Image(
                  //本地静态图片
                  // image: AssetImage('assets/images/wechat.jpg'),
                  image: NetworkImage(
                      'https://eux-public.bj.bcebos.com/2018/09/03/%5Bnew%20article%5D%20%E5%BE%AE%E4%BF%A1%E5%B0%8F%E7%A8%8B%E5%BA%8F%E6%9E%B6%E6%9E%84%E5%8E%9F%E7%90%86.jpg'),
                  height: 200,
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
                child: Text('微信小程序架构原理微信小程序架构原理微信小程序架构原理微信小程序架构原理',
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
}
