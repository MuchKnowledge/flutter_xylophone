import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final player = getPlayer();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black87,
            body: Column(children: [
              getButton(1, Colors.red),
              getButton(2, Colors.orange),
              getButton(3, Colors.yellow),
              getButton(4, Colors.green),
              getButton(5, Colors.indigo),
              getButton(6, Colors.blue),
              getButton(7, Colors.purple)
            ])));
  }
}

AudioCache getPlayer() => AudioCache(prefix: 'assets/');

Expanded getButton(int positionNumber, Color color) => Expanded(
      child: GestureDetector(
          onTapDown: (TapDownDetails details) {
            player.play('note$positionNumber.wav');
          },
          child: Container(color: color)),
    );
