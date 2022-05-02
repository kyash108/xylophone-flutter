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

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Expanded(
                  child: FlatButton(
                    color: Colors.red,
                    onPressed: (){
                      playSound(1);
                    },
                    minWidth: double.infinity,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.orange,
                    onPressed: (){
                      playSound(2);
                    },
                    minWidth: double.infinity,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.yellow,
                    onPressed: (){
                      playSound(3);
                    },
                    minWidth: double.infinity,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: (){
                      playSound(4);
                    },
                    minWidth: double.infinity,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.greenAccent,
                    onPressed: (){
                      playSound(5);
                    },
                    minWidth: double.infinity,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: (){
                      playSound(6);
                    },
                    minWidth: double.infinity,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.purple,
                    onPressed: (){
                      playSound(7);
                    },
                    minWidth: double.infinity,
                  ),
                ),
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
