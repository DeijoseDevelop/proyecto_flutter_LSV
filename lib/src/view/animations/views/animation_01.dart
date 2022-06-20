import 'dart:math';

import 'package:flutter/material.dart';

class Animation01 extends StatefulWidget {
  const Animation01({Key? key}) : super(key: key);

  @override
  State<Animation01> createState() => _Animation01State();
}

class _Animation01State extends State<Animation01> {
  double _value = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation 01'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const FlutterLogo(
              size: 100,
            ),
            const SizedBox(height: 15),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.002)
                ..rotateY(pi * _value),
              child: Image.network(
                'https://www.cloudcenterandalucia.es/wp-content/uploads/2022/01/Hacker-vs-Cracker_Cloud-Center-Andaluc%C3%ADa_Principal.png',
                height: 150,
              ),
            ),
            Slider(
              value: _value,
              onChanged: (val) {
                setState(() {
                  _value = val;
                });
              },
            ),
            Text('Value: ${_value.toStringAsFixed(1)}'),
          ],
        ),
      ),
    );
  }
}
