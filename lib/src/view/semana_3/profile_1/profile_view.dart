import 'package:flutter/material.dart';

import 'package:final_project_of_mobile/src/view/semana_3/profile_1/Followers.dart';
import 'package:final_project_of_mobile/src/view/semana_3/profile_1/body.dart';
import 'package:final_project_of_mobile/src/view/semana_3/profile_1/header.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text('Profile'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 220,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.deepOrange.shade300],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: const [0.5, 0.9],
              ),
            ),
            child: const Header(),
          ),
          const Followers(),
          const Body(),
        ],
      ),
    );
  }
}
