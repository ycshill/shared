import 'package:flutter/material.dart';

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('要电话'),
      onPressed: (){
        _getPhone(context);
      },
    );
  }

  _getPhone(BuildContext context) async{
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PhonesPage())
    );
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class PhonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('电话号码页面'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('男1'),
              onPressed: () {
                Navigator.pop(context, '19999999');
              },
            ),
            RaisedButton(
              child: Text('男2'),
              onPressed: () {
                Navigator.pop(context, '343434');
              },
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: '页面跳转并返回数据',
    home: FirstPage(),
  ));
}
