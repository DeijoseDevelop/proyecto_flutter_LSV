// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizedText = TextStyle(fontSize: 30.0);
    int count = 10;

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
            showMessage();
            print('$count');
          },
          child: const Icon(Icons.access_alarm),
        ));
  }

  void showMessage() => print('hi, again');
}
