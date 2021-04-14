import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void playSound(int n){
      final player=AudioCache();
      player.play('note$n.wav');
    }

    Expanded buildKey({int n,Color color}){
      return Expanded(
        child: TextButton(onPressed: (){
          playSound(n);
        }, child: Container(
          color: color,
        )),
      );
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(n:1,color:Colors.red),
              buildKey(n:2,color:Colors.orange),
              buildKey(n:3,color:Colors.yellow),
              buildKey(n:4,color:Colors.green),
              buildKey(n:5,color:Colors.teal),
              buildKey(n:6,color:Colors.blue),
              buildKey(n:7,color:Colors.purple),

          ],
          ),
        ),
      ),
    );
  }
}



