import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dart 的基础语法练习'),
      ),
      body: Center(
        child: Text('1212'),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    title: 'dart 的基础语法',
    home: FirstPage(),
  ));

  // 匿名方法
  Function fun = (str) {
    print('hello---$str');
  };

  fun('1'); // hello---1

  // 自身直接调用
  ((){
    print('自己直接调用');
  })();

  List hello = ['h', 'e', 'l', 'l', 'o'];
  // 匿名函数作为参数传递
  // print(listTimes(hello, (str){ return str * 3; }));  // [hhh, eee, lll, lll, ooo]
  print(listTimes1(hello)); // [hhh, eee, lll, lll, ooo]

}

// 将自身调用三次
List listTimes(List list, String times(str)) {
  for (int i = 0; i < list.length; i++) {
    list[i] = times(list[i]);
  }

  return list;
}

// 匿名函数在方法中使用
List listTimes1(List list){
  Function fun = (str) { return str * 3; };
   for (int i = 0; i < list.length; i++) {
    list[i] = fun(list[i]);
  }

  return list;
}
