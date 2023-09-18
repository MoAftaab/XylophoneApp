import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Expanded colormusic(Color color, int soundNumber) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () async {
            final player = AudioPlayer();
            player.play(
              AssetSource('note$soundNumber.wav'),
            );
          },
          child: const Text(
            '',
          ),
        ),
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
            children: <Widget>[
              colormusic(Colors.white38, 1),
              colormusic(Colors.red, 2),
              colormusic(Colors.green, 3),
              colormusic(Colors.yellow, 4),
              colormusic(Colors.lightBlue, 5),
              colormusic(Colors.orange, 6),
              colormusic(Colors.pink, 7),
            ],
          ),
        ),
      ),
    );
  }
}
