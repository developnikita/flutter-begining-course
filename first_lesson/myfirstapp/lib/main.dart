import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("My First App"),
        centerTitle: true,
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: Image.asset("assets/green1.png"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.green[200],
      ),
    );
  }
}
