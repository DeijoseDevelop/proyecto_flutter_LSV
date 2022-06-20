import 'package:final_project_of_mobile/src/view/home_view.dart';
import 'package:final_project_of_mobile/src/view/semana_2/firebase_list_02.dart';
import 'package:final_project_of_mobile/src/view/semana_3/animation_3d.dart';
import 'package:final_project_of_mobile/src/view/semana_3/list_view_card/list_view_card.dart';
import 'package:final_project_of_mobile/src/view/semana_3/profile_04/profile_04.dart';
import 'package:final_project_of_mobile/src/view/semana_3/profile_2/profile_view_2.dart';
import 'package:final_project_of_mobile/src/view/semana_3/profile_3/profile_view_3.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  /* static const TextStyle optionStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold); */
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    /* FirebaseList(), */
    const FirebaseList02(),
    const ListViewCard(),
    /* ProfileView(),*/
    /* const ProfileView03(), */
    const ProfileView04(),
    const Animation3D(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.tealAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: 'Car Wash',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'List View',
            backgroundColor: Color.fromARGB(255, 215, 217, 218),
          ), 
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color.fromRGBO(106, 219, 194, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.animation),
            label: 'Animation 3D',
            backgroundColor: Color.fromARGB(202, 244, 244, 241),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
