import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 30.0),
      ),
      body: _list(context),
    );
  }

  Widget _list(BuildContext context){
    return ListView(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.fact_check),
          title: const Text('First App in flutter'),
          onTap: () => Navigator.pushNamed(context, '/app'),
        ),
        ListTile(
          leading: const Icon(Icons.task),
          title: const Text('First Task in class'),
          onTap: () => Navigator.pushNamed(context, '/first'),
        ),
        ListTile(
          leading: const Icon(Icons.add_task),
          title: const Text('Task Final'),
          onTap: () => Navigator.pushNamed(context, '/task'),
        ),
        ListTile(
          leading: const Icon(Icons.browse_gallery),
          title: const Text('Gallery'),
          onTap: () => Navigator.pushNamed(context, '/gallery'),
        ),
      ],
    );
  }
}