import 'package:flutter/material.dart';
import 'dart:math';

class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  double _valueSlider = 100.0;
  int _color1 = 200;
  int _color2 = 200;
  int _color3 = 200;
  int _textColor1 = 255;
  int _textColor2 = 255;
  int _textColor3 = 255;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(_color1, _color2,  _color3, 1),
      appBar: AppBar(
        title: const Text('Change Color'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            Text('Hello World',
                style: TextStyle(
                    color: Color.fromRGBO(
                        _textColor1, _textColor2, _textColor3, 1),
                    fontSize: 50)),
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
          _color1 = Random().nextInt(255);
          _color2 = Random().nextInt(255);
          _color3 = Random().nextInt(255);
          _textColor1 = Random().nextInt(255);
          _textColor2 = Random().nextInt(255);
          _textColor3 = Random().nextInt(255);
        });
      },
    );
  }
}
