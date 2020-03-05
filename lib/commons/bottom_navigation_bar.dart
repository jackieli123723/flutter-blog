import 'package:flutter/material.dart';

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
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => (RadioVidaEterna())),
                // );
              },
              child: Icon(
                Icons.home,
              ),
            ),
            title: Text('Home', style: TextStyle())),
        BottomNavigationBarItem(
            icon: InkWell(
              child: Icon(
                Icons.search,
              ),
            ),
            title: Text("Eventos", style: TextStyle())),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_border,
            ),
            title: Text(
              "Mapa",
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), title: Text("Contacto"))
      ],
    );
  }
}
