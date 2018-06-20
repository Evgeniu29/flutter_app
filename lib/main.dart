import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyVidget(),
    );
  }
}

class MyVidget extends StatefulWidget {
  @override
  State createState() => new _MyHomeState();
}

class _MyHomeState extends State<MyVidget> {
  final Random _random = new Random();
  Color _color = Colors.orange;

  get _width => MediaQuery.of(context).size.width;

  get _height => MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GestureDetector(
        onTap: () {
          // Change the color of the container beneath
          setState(() {
            _color = new Color.fromRGBO(_random.nextInt(256),
                _random.nextInt(256), _random.nextInt(256), 1.0);
          });
        },
        child: new Container(
          alignment: Alignment.center,
          child: new Text('I want a job at Solid Software'),
          width: _width,
          height: _height,
          color: _color,
        ),
      ),
    );
  }
}
