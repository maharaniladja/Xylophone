import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buatTombol(Colors.red, "note1.wav"),
              buatTombol(Colors.orange, "note2.wav"),
              buatTombol(Colors.yellow, "note3.wav"),
              buatTombol(Colors.green, "note4.wav"),
              buatTombol(Colors.blue, "note5.wav"),
              buatTombol(Colors.indigo, "note6.wav"),
              buatTombol(Colors.purple, "note7.wav"),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buatTombol(Color color, String filename) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () async {
          final player = AudioPlayer();
          await player.play(AssetSource(filename));
        },
        child: null,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }
}
