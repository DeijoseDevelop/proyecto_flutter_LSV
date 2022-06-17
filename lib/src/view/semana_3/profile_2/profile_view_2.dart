import 'package:flutter/material.dart';
import 'package:final_project_of_mobile/src/view/semana_3/profile_2/body.dart';
import 'package:final_project_of_mobile/src/view/semana_3/profile_2/header_02.dart';

class ProfileView02 extends StatelessWidget {
  const ProfileView02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
        title: const Text('Profile 02', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: const <Widget>[
          Header02(),
          Body02(),
        ],
      ),
    );
  }
}
