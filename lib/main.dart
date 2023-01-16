import 'package:flutter/material.dart';
import 'dart:math';

// import 'package:flutter/services.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('DICE',
        style: TextStyle(
            color: Colors.black
        ),
        ),
        centerTitle: true,
      ),
      body: const dicepage(),
    ),
  ));
}
class dicepage extends StatefulWidget {
  const dicepage({Key? key}) : super(key: key);

  @override
  State<dicepage> createState() => _dicepageState();
}
  var left =3;
  var right = 1;
class _dicepageState extends State<dicepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    left = Random().nextInt(6)+1;
                  });
                },
                  child: Image.asset('images/dice$left.png')),
          ),
          Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    right = Random().nextInt(6)+1;
                  });
                },
                  child: Image.asset('images/dice$right.png')),
          )
        ],
      ),
    );
  }
}

