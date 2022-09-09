import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xFF005b96),
      appBar: AppBar(
        backgroundColor: Color(0xFF011f4b),
        title: Text("Magic Ball"),
      ),
      body: magicball(),
    ),
  ));
}

class magicball extends StatefulWidget {
  const magicball({Key? key}) : super(key: key);

  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  var ans = 1;
  void randomise() {
    setState(() {
      ans = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$ans.png'),
        onPressed: (randomise),
      ),
    );
  }
}
