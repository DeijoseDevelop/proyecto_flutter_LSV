import 'package:flutter/material.dart';

class Body04 extends StatelessWidget {
  const Body04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            _row(Icons.mail, 'thebigdeijose@gmail.com'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            _row(Icons.phone_android, '+57 300 7887902'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            _row(Icons.person_add, 'Add to Groupe'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            _row(Icons.message, 'Show All Comments'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 14, 214, 225)),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text('FOLLOW ME'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _row(IconData icon, String text) {
  return Row(
    children: <Widget>[
      Icon(icon, color: const Color.fromARGB(255, 14, 214, 225)),
      const SizedBox(width: 30),
      Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    ],
  );
}
