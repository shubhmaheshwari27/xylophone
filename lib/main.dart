import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
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
                // child: GestureDetector()
                  child: MaterialButton(color: Colors.red,
                      onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource("note1.wav"));
                      }),
                ),
                Expanded(
                  child: MaterialButton(color: Colors.orange,
                      onPressed: ()  {
                        final player = AudioPlayer();
                        player.play(AssetSource("note2.wav"));
                      }),
                ),
                Expanded(
                  child: MaterialButton(color: Colors.yellow,
                      onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource("note3.wav"));
                      }),
                ),
                Expanded(
                  child: MaterialButton(color: Colors.green,
                      onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource("note4.wav"));
                      }),
                ),
                Expanded(
                  child: MaterialButton(color: Colors.teal,
                      onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource("note5.wav"));
                      }),
                ),
                Expanded(
                  child: MaterialButton(color: Colors.blue,
                      onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource("note6.wav"));
                      }),
                ),
                Expanded(
                  child: MaterialButton(color: Colors.purple,
                      onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource("note7.wav"));
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
