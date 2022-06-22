import 'package:flutter/material.dart';

class Animations extends StatefulWidget {
  const Animations({Key? key}) : super(key: key);

  @override
  State<Animations> createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations'),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 100,
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 10),
              ListTile(
                tileColor: const Color.fromARGB(255, 220, 237, 233),
                title: const Center(
                  child: Text(
                    'Animation 3D',
                    style: TextStyle(color: Colors.black),
                  )
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/animation3d');
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                tileColor: const Color.fromARGB(255, 220, 237, 233),
                title: const Center(
                  child: Text(
                    'Animation  One',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/animation01');
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                tileColor: const Color.fromARGB(255, 220, 237, 233),
                title: const Center(
                  child: Text(
                    'Animation  Two',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/animation02');
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}
