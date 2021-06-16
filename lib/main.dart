// import 'package:audioplayers/audioplayers.dart';
// import 'dart:html';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayer/audioplayer.dart';

void main() => runApp(XylophoneApp());
void playsound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buildKey({String note, Color color, int soundNumber}) {
  return Expanded(
    child: TextButton(
      child: Text(note,
          style: TextStyle(
              fontSize: 36,
              letterSpacing: 4,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold)),
      style: TextButton.styleFrom(
        primary: Colors.teal,
        backgroundColor: color,
        onSurface: Colors.grey,
        shadowColor: Colors.black,
        elevation: 10,
        side: BorderSide(color: Colors.black, width: 5),
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(60))),
      ),
      onPressed: () {
        playsound(soundNumber);
        print(note);
      },
      onLongPress: () {
        print('stoooooooooooop');
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(note: 'Do', color: Colors.red, soundNumber: 1),
              buildKey(note: 'Ré', color: Colors.orange, soundNumber: 2),
              buildKey(note: 'Mi', color: Colors.yellow, soundNumber: 3),
              buildKey(note: 'Fa', color: Colors.green, soundNumber: 4),
              buildKey(note: 'Sol', color: Colors.teal, soundNumber: 5),
              buildKey(note: 'La', color: Colors.blue, soundNumber: 6),
              buildKey(note: 'Si', color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
