import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:soundpool/soundpool.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _texts = [
    "おめでとうございます",
    "合格です",
    "よくできました",
    "残念でした",
    "不合格です",
    "頑張りましょう"
  ];

  List<int> _soundIds = [0, 0, 0, 0, 0, 0];

  // List<int> soundld = List();

  Soundpool _soundpool;

  int number = 3;

  @override
  void initState() {
    _initSounds();
    super.initState();
  }

  void _initSounds() async {
    _soundpool = Soundpool();

    _soundIds[0] = await loadSound("assets/sounds/sound1.mp3");
    // _soundIds[0] = await rootBundle
    //     .load("assets/sounds/sound1.mp3")
    //     .then((value) => _soundpool.load(value));
  }

  Future<int> loadSound(String s) {
    return null;
  }

  @override
  void dispose() {
    _soundpool.release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ツッコミマシーン"),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(flex: 1, child: _soundButton(_texts[0])),
                    Expanded(flex: 1, child: _soundButton(_texts[1])),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(flex: 1, child: _soundButton(_texts[2])),
                    Expanded(flex: 1, child: _soundButton(_texts[3])),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(flex: 1, child: _soundButton(_texts[4])),
                    Expanded(flex: 1, child: _soundButton(_texts[5])),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _soundButton(String displayText,) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: null, //Todo 音を鳴らす
        child: Text(displayText),
      ),
    );
  }
}
// _soundIds[0] = await rootBundle
//     .load("assets/sounds/sound1.mp3")
//     .then((Value)=>_soundpool.load(value));
