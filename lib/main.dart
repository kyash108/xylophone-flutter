import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

void playSound(int soundNummber){
  final player = AudioCache();
  player.play('note$soundNummber.wav');
}

Expanded buildKey({Color color, int sound}){
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: (){
        playSound(sound);
      },
      minWidth: double.infinity,
    ),
  );
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                buildKey(color: Colors.red,sound:1),
                buildKey(color: Colors.orange,sound:2),
                buildKey(color: Colors.yellow,sound:3),
                buildKey(color: Colors.green,sound:4),
                buildKey(color: Colors.greenAccent,sound:5),
                buildKey(color: Colors.blue,sound:6),
                buildKey(color: Colors.purple,sound:7),
              ],
            ),
            color: Colors.black,
            width: double.infinity,
          ),

        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
