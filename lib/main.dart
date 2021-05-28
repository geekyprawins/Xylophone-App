import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('assets_note$soundNum.wav');
  }

  Expanded buildKey(Color colorName, int trackNum, String note) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(trackNum);
        },
        color: colorName,
        child: Text(
          note,
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Lemonada',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(Colors.red, 1, 'Sa'),
            buildKey(Colors.orange, 2, 'Re'),
            buildKey(Colors.yellow, 3, 'Ga'),
            buildKey(Colors.green, 4, 'Ma'),
            buildKey(Colors.blue, 5, 'Pa'),
            buildKey(Colors.indigo, 6, 'Dha'),
            buildKey(Colors.deepPurple, 7, 'Ni'),
          ]),
        ),
      ),
    );
  }
}
