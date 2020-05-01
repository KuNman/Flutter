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
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/gt3.jpg')),
                Text(
                  'GT3 Touring',
                  style: TextStyle(fontFamily: 'KaushanScript', fontSize: 40),
                ),
                Text(
                  'The best car in the universe',
                  style: TextStyle(
                      fontFamily: 'InconsolataExtraExpanded-Regular',
                      fontSize: 15,
                      color: Colors.white70),
                ),
                SizedBox(
                  height: 20,
                  child: Divider(
                    color: Colors.black26,
                  ),
                ),
                Card(
                  color: Colors.grey.shade400,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                      ),
                      title: Text(
                        'Porsche',
                        style: TextStyle(
                            fontFamily: 'InconsolataExtraExpanded-Regular',
                            fontSize: 15,
                            color: Colors.white70),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey.shade400,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: Icon(
                          Icons.vpn_key,
                        ),
                        title: Text(
                          '1122',
                          style: TextStyle(
                              fontFamily: 'InconsolataExtraExpanded-Regular',
                              fontSize: 15,
                              color: Colors.white70),
                        )),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
