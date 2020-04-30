import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: double.infinity,
                width: 100,
                color: Colors.deepOrange,
                child: Text('aaa'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepOrange,
                    child: Text('ccc'),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                    child: Text('ddd'),
                  ),
                ],
              ),
              Container(
                height: double.infinity,
                width: 100,
                color: Colors.orangeAccent,
                child: Text('bbb'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
