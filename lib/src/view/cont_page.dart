import 'package:flutter/material.dart';

class ContPage extends StatefulWidget {
  const ContPage({Key? key}) : super(key: key);

  @override
  State<ContPage> createState() => _ContPageState();
}

class _ContPageState extends State<ContPage> {
  int _cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App in Flutter'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 30),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Numbers of tabs:', style: TextStyle(fontSize: 25)),
              Text('$_cont',
                  style: const TextStyle(fontSize: 30, color: Colors.blue)),
            ]),
      ),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
      const SizedBox(width: 20),
      FloatingActionButton(
        heroTag: 'btn1',
        onPressed: _zero,
        child: const Icon(Icons.exposure_zero),
      ),
      const Expanded(child: SizedBox(width: 5)),
      FloatingActionButton(
        heroTag: 'btn2',
        onPressed: _remove,
        child: const Icon(Icons.remove),
      ),
      const SizedBox(width: 10),
      FloatingActionButton(
        heroTag: 'btn3',
        onPressed: _add,
        child: const Icon(Icons.add),
      ),
    ]);
  }

  void _zero() {
    setState(() => _cont = 0);
  }

  void _remove() {
    setState(() => _cont--);
  }

  void _add() {
    setState(()=> _cont++);
  }
}
