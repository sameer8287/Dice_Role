
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
                  var y = rand();
                  var z =rand();
                  setState(() {
                    right = z;
                    left = y;
                  });
                },
                  child: Image.asset('images/dice$left.png')),
          ),
          Expanded(
              child: TextButton(
                onPressed: () {
                  var x = rand();
                  var w =rand();
                  setState(() {
                    // right = Random().nextInt(6)+1;
                    left = w;
                    right = x;
                  });
                },
                  child: Image.asset('images/dice$right.png')),
          )
        ],
      ),
    );
  }
}
int rand()
{
  var com = Random().nextInt(6)+1;
  return com;
}

