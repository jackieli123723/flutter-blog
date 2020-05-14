import 'package:flutter/material.dart';
import '../pages/person/person_info.dart';

//  Navigator.pushNamed(context, '/about');
//   Navigator.pushNamed(context, '/search');

class BottomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFFFAFAFA),
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: InkWell(
              borderRadius: BorderRadius.circular(10),
              splashColor: Colors.blue,
              onTap: () {},
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
      ],
    );
  }
}
//https://material.io/tools/icons/
