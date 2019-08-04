import 'package:flutter/material.dart';
class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '更具名称导航',
      initialRoute: '/',
      routes: {
        '/first':(context)=>Page(),
        '/second':(context)=>SecondScreen(),
      },
      home: Page(),
    );
  }
}

class Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('First screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('跳转'),
          onPressed: (){
            // 跳转到第二各页面
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('页面2'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('返回'),
        ),
      ),
    );
  }
}