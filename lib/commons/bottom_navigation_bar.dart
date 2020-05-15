import 'package:flutter/material.dart';
import '../pages/person/person_info.dart';
import '../home.dart';
import '../pages/person/person_product.dart';
import '../pages/search/search.dart';

class BottomNavigatorTab extends StatefulWidget {
  BottomNavigatorTab({
    Key key,
    this.tabIndex,
  }) : super(key: key);
  final int tabIndex;
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigatorTab> {
  int _currentIndex = 0;
  final List<Widget> bottomList = [
    Home(),
    Search(),
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
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Icon(
              Icons.home,
            ),
          ),
          title: Text('首页', style: TextStyle())),
      BottomNavigationBarItem(
          icon: InkWell(
            child: Icon(
              Icons.remove_from_queue,
            ),
          ),
          title: Text("简历", style: TextStyle())),
      BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border), title: Text("作品")),
      BottomNavigationBarItem(
          icon: InkWell(
            child: Icon(
              Icons.person_outline,
            ),
            onTap: () {
              //way1
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PersonInfo();
              }));

              //way2
              // Navigator.pushNamed(context, '/about');
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
      currentIndex: _currentIndex, //tabindex如何纯涤进来
      onTap: _onItemTapped,
    );
  }
}

//  Navigator.pushNamed(context, '/about');
//  Navigator.pushNamed(context, '/search');

// class BottomNavigator extends StatefulWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Color(0xFFFAFAFA),
//       currentIndex: 0, //锚点高亮
//       type: BottomNavigationBarType.fixed,
//       items: [
//         BottomNavigationBarItem(
//             icon: InkWell(
//               borderRadius: BorderRadius.circular(10),
//               splashColor: Colors.blue,
//               onTap: () {},
//               child: Icon(
//                 Icons.home,
//               ),
//             ),
//             title: Text('首页', style: TextStyle())),
//         BottomNavigationBarItem(
//             icon: InkWell(
//               child: Icon(
//                 Icons.remove_from_queue,
//               ),
//             ),
//             title: Text("简历", style: TextStyle())),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.bookmark_border), title: Text("作品")),
//         BottomNavigationBarItem(
//             icon: InkWell(
//               child: Icon(
//                 Icons.person_outline,
//               ),
//               onTap: () {
//                 //way1
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return PersonInfo();
//                 }));

//                 //way2
//                 // Navigator.pushNamed(context, '/about');
//               },
//             ),
//             title: Text(
//               "关于",
//             )),
//       ],
//     );
//   }
// }

// //https://material.io/tools/icons/
