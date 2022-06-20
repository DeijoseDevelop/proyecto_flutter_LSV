import 'package:final_project_of_mobile/src/view/semana_3/profile_3/Card_profile.dart';
import 'package:flutter/material.dart';

class Body03 extends StatelessWidget {
  const Body03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: <Widget>[
          CardProfile(
            icon: Icons.date_range_outlined,
            title: 'Joined Date',
            subtitle: '1 February 2022',
          ),
          CardProfile(
            icon: Icons.insert_drive_file,
            title: 'Active Projects',
            subtitle: '13',
          ),
          CardProfile(
            icon: Icons.near_me_outlined,
            title: 'Projects Delivered',
            subtitle: '135',
          ),
        ],
      ),
    );
  }
}
