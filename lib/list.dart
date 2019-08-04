import 'package:flutter/material.dart';
import 'package:flutter_study/animateTest.dart';
class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '教程列表',
      home: ListPage(),
    );
  }
}

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('列表')
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('动画'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AnimatePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('导航并返回'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('在同一个页面中导航'),
          ),
        ],
      ),
    );
  }
}