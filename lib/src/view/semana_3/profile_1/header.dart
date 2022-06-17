import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.red.shade300,
              minRadius: 35.0,
              child: const Icon(
                Icons.call,
                size: 30.0,
              ),
            ),
            const CircleAvatar(
                backgroundColor: Colors.white70,
                minRadius: 60.0,
                // ignore: unnecessary_const
                child: const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                )),
            CircleAvatar(
              backgroundColor: Colors.red.shade300,
              minRadius: 35.0,
              child: const Icon(
                Icons.message,
                size: 30.0,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Deiver Vazquez',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Text(
          'Flutter Developer',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}