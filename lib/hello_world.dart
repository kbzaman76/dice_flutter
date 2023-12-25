import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  HelloWorld(this.text, {key}) : super(key: key);
  final String text;
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.amber, fontSize: 40),
      ),
    );
  }
}
