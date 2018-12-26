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

  String language = 'java';
  // break;
  switch(language) {
    case 'js':
      print('js');
      break;
    case 'java':
      print('java');
      break;
    case 'dart':
      print('dart');
      break;
    default:
      print('none');
  }
  // 使用 continue
  String language1 = 'dart';
  switch(language1) {
  Tag:
   case 'js':
      print('js');
      break;
    case 'java':
      print('java');
      break;
    case 'dart':
      print('dart');
      continue Tag;
    default:
      print('none');
  }
  /**
   * flutter: java
     flutter: dart
     flutter: js
   */
}
