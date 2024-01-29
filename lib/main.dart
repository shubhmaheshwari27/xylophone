import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource("note$soundNumber.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: MaterialButton(color: Colors.red,
                      onPressed: () {
                    playSound(1);
                      }),
                ),
                Expanded(
                  child: MaterialButton(color: Colors.orange,
                      onPressed: ()  {
                        playSound(2);
                      }),
                ),
                Expanded(
                  child: MaterialButton(color: Colors.yellow,
                      onPressed: () {
                        playSound(3);
                      }),
                ),
                Expanded(
                  child: MaterialButton(color: Colors.green,
                      onPressed: () {
                        playSound(4);
                      }),
                ),
                Expanded(
                  child: MaterialButton(color: Colors.teal,
                      onPressed: () {
                        playSound(5);
                      }),
                ),
                Expanded(
                  child: MaterialButton(color: Colors.blue,
                      onPressed: () {
                        playSound(6);
                      }),
                ),
                Expanded(
                  child: MaterialButton(color: Colors.purple,
                      onPressed: () {
                        playSound(7);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
