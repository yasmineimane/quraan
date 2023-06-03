import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final player = AudioPlayer();
void playQuraan(int n) {
  player.stop();
  player.play(
    AssetSource('quraan-$n.mp3'),
  );
}

Expanded myButton(int number, String suratName) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        onPressed: () {
          playQuraan(number);
        },
        child: Row(
          children: [
            Icon(
              Icons.numbers,
              color: Colors.blueGrey[200],
            ),
            Text(
              suratName,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.blueGrey[300],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: const Text('Quraan'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          myButton(1, 'AL-Fatihah'),
          myButton(2, 'AL-Ikhlas'),
          myButton(3, 'AL-Falaq'),
          myButton(4, 'AL-Nas'),
          myButton(5, 'AL-Kaouther'),
          myButton(6, 'AL-Kafirun'),
          myButton(7, 'AL-Fil'),
          myButton(8, 'AL-Assr'),
        ],
      ),
    );
  }
}
