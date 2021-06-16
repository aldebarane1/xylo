// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayer/audioplayer.dart';

void main() => runApp(XylophoneApp());
void playsound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    backgroundColor: Colors.red,
                    onSurface: Colors.grey,
                  ),
                  onPressed: () {
                    playsound(1);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.orange,
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    playsound(2);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.yellow,
                    backgroundColor: Colors.yellow,
                  ),
                  onPressed: () {
                    playsound(3);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.green,
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    playsound(4);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.teal,
                    backgroundColor: Colors.teal,
                  ),
                  onPressed: () {
                    playsound(5);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    playsound(6);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.purple,
                    backgroundColor: Colors.purple,
                  ),
                  onPressed: () {
                    playsound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
