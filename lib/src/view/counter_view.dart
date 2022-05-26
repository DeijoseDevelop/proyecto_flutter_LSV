// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  void increasefn() {
    setState(() => count++);
  }

  void decreasefn() {
    setState(() => count--);
  }

  void resetfn() {
    setState(() => count = 0);
  }

  @override
  Widget build(BuildContext context) {
    const sizedText = TextStyle(fontSize: 30.0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('First Task'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 30),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Number Tabs:', style: sizedText),
            Text('$count', style: sizedText),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          FloatingCustomW(increase: increasefn, decrease: decreasefn, reset: resetfn),
    );
  }
}

class FloatingCustomW extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;
  const FloatingCustomW({
    Key? key,
    required this.increase,
    required this.decrease,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: () => increase(),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 'btn2',
            onPressed: () => decrease(),
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            heroTag: 'btn3',
            onPressed: () => reset(),
            child: const Icon(Icons.restore),
          ),
        ]);
  }
}
