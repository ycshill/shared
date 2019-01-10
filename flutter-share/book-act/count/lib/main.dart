// 引入Material UI 组价库。Material 是一种标准的移动端和web端的视觉设计语言。
import 'package:flutter/material.dart';

// 应用的入口，runApp 的功能是启用 Flutte 应用
void main() => runApp(new MyApp());

// Flutter 在构建页面的时候，会调用 build 方法 来构建界面
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({ Key key, this.title }): super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  /**
   * @description:  点击增加
   * @param {type}
   * @return: 返回增加后的值
   */

  void _incrementCounter() {
    // 当状态发生了变化的时候，会通知Flutter,然后执行build方法来根据新的状态重新构建页面
    setState(() {
      _counter++;
    });
  }

// build 一般都是放在 State 中
  @override
  Widget build(BuildContext context) {
    // Scaffold 是Material 库中提供的页面脚手架
    return new Scaffold(
      appBar: new AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('you have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
