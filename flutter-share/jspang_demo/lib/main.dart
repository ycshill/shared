import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: '页面跳转',
      home: new FirstScreen(),
    )
  );
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一页'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('跳转到第二页'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => new SecondScreen()
            ));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二页'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('跳转到第一页'),
          onPressed: (){
            Navigator.pop(context);
          },
        )

      ),
    );
  }
}
