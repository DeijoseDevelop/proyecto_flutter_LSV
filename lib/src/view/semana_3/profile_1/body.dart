import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        ListTile(
          title: Text(
            'Email',
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'thebigdeijose@gmail.com',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            'Github',
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'https://github.com/DeijoseDevelop',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            'Linkedin',
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'www.linkedin.com/deijosedevelop',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}