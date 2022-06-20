import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class Header03 extends StatefulWidget {
  const Header03({Key? key}) : super(key: key);

  @override
  State<Header03> createState() => _Header03State();
}

class _Header03State extends State<Header03> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _backgroundImage(),
        const Text(
          'Deiver Vazquez',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Text(
          'Frontend Developer',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 170, 170, 170),
          ),
        )
      ],
    );
  }
}

Container _backgroundImage() {
  return Container(
    margin: const EdgeInsets.only(bottom: 60),
    height: 180,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color.fromRGBO(11, 205, 128, 1),
          Color.fromRGBO(106, 219, 194, 1),
          Color.fromRGBO(44, 175, 189, 1),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: SizedBox(
      width: double.infinity,
      height: 150,
      child: Container(
          alignment: const Alignment(0.0, 2.5),
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 55.0,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
                radius: 50.0
              ),
            )
          ),
    ),
  );
}
