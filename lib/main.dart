import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource("note$soundNumber.wav"));
  }

  Expanded buildkey({required Color color, required int soundNumber}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(color: Colors.red, soundNumber: 1),
                buildkey(color: Colors.orange, soundNumber: 2),
                buildkey(color: Colors.yellow, soundNumber: 3),
                buildkey(color: Colors.green, soundNumber: 4),
                buildkey(color: Colors.teal, soundNumber: 5),
                buildkey(color: Colors.blue, soundNumber: 6),
                buildkey(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
