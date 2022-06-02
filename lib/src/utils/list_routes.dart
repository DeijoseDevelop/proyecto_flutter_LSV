import 'package:flutter/material.dart';

class Routes {
  final BuildContext contexto;
  Routes({required this.contexto});

  List<Widget> listRoutes() {
    return [
      ListTile(
        leading: const Icon(Icons.fact_check),
        title: const Text('First App in flutter'),
        onTap: () => Navigator.pushNamed(contexto, '/app'),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
      const Divider(),
      ListTile(
        leading: const Icon(Icons.task),
        title: const Text('First Task in class'),
        onTap: () => Navigator.pushNamed(contexto, '/first'),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
      const Divider(),
      ListTile(
        leading: const Icon(Icons.add_task),
        title: const Text('First Week Task'),
        onTap: () => Navigator.pushNamed(contexto, '/task'),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
      const Divider(),
      ListTile(
        leading: const Icon(Icons.browse_gallery),
        title: const Text('Gallery'),
        onTap: () => Navigator.pushNamed(contexto, '/gallery'),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
      const Divider(),
      ListTile(
        leading: const Icon(Icons.add_alert_sharp),
        title: const Text('Alert Galery'),
        onTap: () => Navigator.pushNamed(contexto, '/alert'),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
      const Divider(),
      ListTile(
        leading: const Icon(Icons.change_circle),
        title: const Text('Change Color'),
        onTap: () => Navigator.pushNamed(contexto, '/changeColor'),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
      const Divider(),
      ListTile(
        leading: const Icon(Icons.animation),
        title: const Text('Animated Container'),
        onTap: () => Navigator.pushNamed(contexto, '/animatedContainer'),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
      const Divider(),
      ListTile(
        leading: const Icon(Icons.list),
        title: const Text('Second Week Task'),
        onTap: () => Navigator.pushNamed(contexto, '/lista'),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
      const Divider(),
    ];
  }
}

