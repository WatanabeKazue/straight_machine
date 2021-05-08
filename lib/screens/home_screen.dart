import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

// String _text01 ="おめでとうございます";
// String _text02 ="合格です";
// String _text03 ="よくできました";
// String _text04 ="不合格です";
// String _text05 ="まあまあかな";
// String _text06 ="やり直し";
  List<String> _texts = ["おめでとうございます","合格です","よくできました","不合格です",
     "まあまあかな","やり直し"];

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

  Widget _soundButton(String displayText) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: Text( displayText),
      ),
    );
  }
}
