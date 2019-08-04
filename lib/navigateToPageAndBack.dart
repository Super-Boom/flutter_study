import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'navigate to page and back', home: FirstRoute());
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航1'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('open route'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondRoute()));
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由2'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('返回'),
        ),
      ),
    );
  }
}
