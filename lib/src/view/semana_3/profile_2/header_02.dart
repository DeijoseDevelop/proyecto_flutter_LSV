import 'package:flutter/material.dart';

class Header02 extends StatelessWidget {
  const Header02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/profile_fondo.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 150,
        child: Container(
          alignment: const Alignment(0.0, 2.5),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
            radius: 60.0
          ),
        ),
      ),
    );
  }
}
