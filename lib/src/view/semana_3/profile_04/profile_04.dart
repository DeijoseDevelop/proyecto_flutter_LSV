import 'package:final_project_of_mobile/src/view/semana_3/profile_04/body_04.dart';
import 'package:final_project_of_mobile/src/view/semana_3/profile_04/header_04.dart';
import 'package:flutter/material.dart';

class ProfileView04 extends StatelessWidget {
  const ProfileView04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /* appBar: AppBar(
        title: const Text('Profile 04'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 14, 214, 225),
        elevation: 0,
      ), */
      body: Column(
        children: const <Widget>[
          Header04(),
          Body04(),
        ],
      )
    );
  }
}
