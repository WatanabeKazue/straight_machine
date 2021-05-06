import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ツッコミマシーン"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                _soundButton(),
                _soundButton(),
              ],
            ),
          ), 
          Expanded(
            child: Row(
              children: <Widget>[
                _soundButton(),
                _soundButton(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                _soundButton(),
                _soundButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _soundButton() {
    return ElevatedButton();
  }
}
