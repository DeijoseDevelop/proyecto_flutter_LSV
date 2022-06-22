import 'package:flutter/material.dart';

class Header04 extends StatefulWidget {
  const Header04({Key? key}) : super(key: key);

  @override
  State<Header04> createState() => _Header04State();
}

class _Header04State extends State<Header04> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 14, 214, 225),
      ),
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _containerImage(),
            _card(context),
          ],
        ),
      )
    );
  }
}
/*
AnimatedBackground(
        behaviour: RacingLinesBehaviour(),
        vsync: this,
        child:
      ),
 */

Column _column(String title, String subtitle) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 138, 138, 138),
        ),
      ),
      Text(
        subtitle,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 14, 214, 225),
        ),
      ),
    ],
  );
}

Widget _card(context) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 1,
          offset: Offset(0, 3),
        ),
      ],
    ),
    width: MediaQuery.of(context).size.width - 50,
    height: 80,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _column('Photos', '160'),
        _column('Followers', '2254'),
        _column('Following', '520'),
      ],
    ),
  );
}

Column _containerImage() {
  return Column(
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 30),
        child: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile.png'),
          radius: 50,
        ),
      ),
      const SizedBox(height: 5),
      const Text(
        'Deiver Vazquez',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      )
    ],
  );
}
