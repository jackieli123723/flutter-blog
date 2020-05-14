import 'package:flutter/material.dart';

class PersonInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("个人信息"),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFE9E9E9),
      body: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset("assets/images/my.png"),
                  Image.asset("assets/images/my.png"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("jackeili,"),
              Text("web前端开发工程师"),
            ],
          )),
    );
  }
}
