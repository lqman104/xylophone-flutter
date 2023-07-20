import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buttonNote(soundNumber :1, color: Colors.red),
              buttonNote(soundNumber :2, color: Colors.orange),
              buttonNote(soundNumber :3, color: Colors.yellow),
              buttonNote(soundNumber :4, color: Colors.green),
              buttonNote(soundNumber :5, color: Colors.teal),
              buttonNote(soundNumber :6, color: Colors.blue),
              buttonNote(soundNumber :7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonNote({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color)
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(""),
      ),
    );
  }

  void playSound(int note) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.play(AssetSource("note$note.wav"));
  }
}
