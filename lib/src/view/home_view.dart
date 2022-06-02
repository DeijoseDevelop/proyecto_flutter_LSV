// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

import 'package:final_project_of_mobile/src/utils/list_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = new Routes(contexto: context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 30.0),
      ),
      body: ListView(
        children: routes.listRoutes()
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