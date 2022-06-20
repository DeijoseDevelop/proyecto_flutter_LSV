import 'package:final_project_of_mobile/src/view/semana_3/profile_3/body_3.dart';
import 'package:final_project_of_mobile/src/view/semana_3/profile_3/header_3.dart';
import 'package:flutter/material.dart';

class ProfileView03 extends StatelessWidget {
  const ProfileView03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            Header03(),
            Body03(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: buttons(),
    );
  }
}

Widget buttons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        backgroundColor: const Color.fromRGBO(11, 205, 128, 1).withOpacity(0),
        child: const Icon(Icons.arrow_back),
      ),
      FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        heroTag: 'btn2',
        backgroundColor: const Color.fromRGBO(44, 175, 189, 1).withOpacity(0),
        child: const Icon(Icons.menu),
      ),
    ]
  );
}
