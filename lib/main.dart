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
            body: SafeArea(
              child: Column(children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        player.play('note1.wav');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      child: Container()),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        player.play('note2.wav');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      child: Container()),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        player.play('note3.wav');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.yellow),
                      ),
                      child: Container()),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        player.play('note4.wav');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      child: Container()),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        player.play('note5.wav');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo),
                      ),
                      child: Container()),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        player.play('note6.wav');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      child: Container()),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        player.play('note7.wav');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.purple),
                      ),
                      child: Container()),
                ),
              ]),
            )));
  }
}

AudioCache getPlayer() => AudioCache(prefix: 'assets/');
