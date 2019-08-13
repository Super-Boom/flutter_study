import 'package:flutter/material.dart';

class AnimatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'animate',
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('页面跳转返回'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('页面1'),
            onPressed: () => {
            Navigator.of(context).push(_createRoute())
        },
      ),
    )
    ,
    );
  }
}

// 创建动画
Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve)
        );
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      }
  );
}

class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          }, child: Text('页面2'),),
      ),
    );
  }
}