import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({Key? key}) : super(key: key);

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  int count = 0;
  int color1 = 200;
  int color2 = 200;
  int color3 = 200;

  @override
  Widget build(BuildContext context) {
    TextStyle sizedText = TextStyle(
        fontSize: 30.0, color: Color.fromRGBO(color3, color2, color1, 1.0));

    return Scaffold(
        appBar: AppBar(
          title: const Text('Final Task Mobile'),
          centerTitle: true,
          titleTextStyle: const TextStyle(fontSize: 30),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Number Tabs:', style: sizedText),
              Text('$count', style: sizedText),
            ],
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(width: 30),
        FloatingActionButton(
          heroTag: 'btn2',
          onPressed: _remove,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 40),
        FloatingActionButton(
          heroTag: 'btn1',
          onPressed: _zero,
          child: const Icon(Icons.restore),
        ),
        const SizedBox(width: 40),
        FloatingActionButton(
          heroTag: 'btn3',
          onPressed: _add,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  void _zero() {
    setState(() => count = 0);
    color3 += 12;
    color2 -= 112;
  }

  void _remove() {
    setState(() => count--);
    color2 += 112;
    color1 -= 12;
  }

  void _add() {
    setState(() => count++);
    color1 += 152;
    color3 -= 102;
  }
}
