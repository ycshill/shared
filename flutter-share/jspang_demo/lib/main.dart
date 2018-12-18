import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView',
      home: Scaffold(
        body: GridView.count(
          padding: const EdgeInsets.all(20),
          // 网格间的空档
          crossAxisSpacing: 3,
          // 网格的列数
          crossAxisCount: 3,
          children: <Widget>[
            const Text('I am Jspang'),
            const Text('I love Web'),
            const Text('jspang.com'),
            const Text('我喜欢玩游戏'),
            const Text('我喜欢看书'),
            const Text('我喜欢吃火锅')
          ],
        ),
      ),
    );
  }
}
