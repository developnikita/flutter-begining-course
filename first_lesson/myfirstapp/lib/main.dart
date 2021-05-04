import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        centerTitle: true,
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            print("You clicked me");
          },
          icon: Icon(
            Icons.alternate_email
          ),
          color: Colors.green,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.green[200],
      ),
    );
  }
}
