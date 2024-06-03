// ignore_for_file: unused_import, prefer_const_constructors, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNumber) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource('note$noteNumber.wav'),
    );
    player.resume();
  }

  void buildKey(){
    Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () async {
                    playSound(1);
                  },
                  child: Container(),
                ),
              );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(),
              buildKey(),
              buildKey(),
              buildKey(),
              buildKey(),
              buildKey(),
              buildKey(),
            ],
          ),
        ),
      ),
    );
  }
}
