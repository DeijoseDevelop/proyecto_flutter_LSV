// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

import 'package:final_project_of_mobile/src/utils/list_routes.dart';
import 'package:final_project_of_mobile/src/view/animated_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = new Routes(contexto: context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 30.0),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
               ScaffoldMessenger.of(context).showSnackBar(
                 const SnackBar(
                   content: Text('Hello new user, click on the play menu to see the animation or on the hamburger menu to navigate.',
                   style: TextStyle(color: Colors.green, fontSize: 20.0, fontWeight: FontWeight.bold),
                   ),
                  )
               );
            },
          ),
        ],
      ),
      body: const Center(
        child: AnimatedContainerPage(),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text('Dropdown Menu'),
              ),
            ),
            ...routes.listRoutes(),
          ],
        ),
      ),
    );
  }
}