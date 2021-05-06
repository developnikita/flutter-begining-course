import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // make the request
    Uri timeUri = Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Omsk');
    Response response = await get(timeUri);
    Map data = jsonDecode(response.body);

    // get property from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    
    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading screen'),
    );
  }
}
