import 'package:flutter/material.dart';
import 'dart:math';

class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  double _valueSlider = 100.0;
  int color1 = 100;
  int color2 = 100;
  int color3 = 100;
  int textColor1 = 255;
  int textColor2 = 255;
  int textColor3 = 255;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(color1, color2, color3, 1),
      appBar: AppBar(
        title: const Text('Change Color'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            Text('Hello World', style: TextStyle(color: Color.fromRGBO(textColor1, textColor2, textColor3, 1), fontSize: 50)),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Colors',
      divisions: 20,
      value: _valueSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (double value) {
        setState(() {
          _valueSlider = value;
          color1 = Random().nextInt(255);
          color2 = Random().nextInt(255);
          color3 = Random().nextInt(255);
          textColor1 = Random().nextInt(255);
          textColor2 = Random().nextInt(255);
          textColor3 = Random().nextInt(255);
        });
      },
    );
  }
}
