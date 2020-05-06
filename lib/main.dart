import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int soundNumber}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundKey}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber: soundKey);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundKey: 1),
                buildKey(color: Colors.white70, soundKey: 2),
                buildKey(color: Colors.yellow, soundKey: 3),
                buildKey(color: Colors.black, soundKey: 4),
                buildKey(color: Colors.blue, soundKey: 5),
                buildKey(color: Colors.blueGrey, soundKey: 6),
                buildKey(color: Colors.purpleAccent, soundKey: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
