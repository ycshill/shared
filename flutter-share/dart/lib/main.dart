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

  List arr = [1, 2, 3, 4];
  for(int i = 0; i < arr.length; i++){
    print('$i--${arr[i]}');
    /***
      flutter: 0--1
      flutter: 1--2
      flutter: 2--3
      flutter: 3--4
     */
  }

  for(int item in arr){
    print(item);
    /**
      flutter: 1
      flutter: 2
      flutter: 3
      flutter: 4
     */
  }
}
