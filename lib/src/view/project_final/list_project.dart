//import 'package:final_project_of_mobile/src/view/project_final/gallery_photos/gallery_provider.dart';
import 'package:flutter/material.dart';

class ListProject extends StatelessWidget {
  const ListProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
/*     final firebaseConnection = FirebaseConnection();
    Registros getRegistro() async {
      final registro = await firebaseConnection.getOneRegistro(0);
      return registro;
    } */
    TextStyle style = const TextStyle(color: Colors.black);

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Project'),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 50,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: _lista(context, style),
          )
        ),
      ),
    );
  }
}

List<Widget> _lista(BuildContext context, TextStyle style) {
  return [
    const SizedBox(height: 10),
    ListTile(
      tileColor: const Color.fromARGB(255, 220, 237, 233),
      title: Center(
          child: Text(
        'List Custom Card',
        style: style,
      )),
      onTap: () {
        Navigator.pushNamed(context, '/listaCustomCard');
      },
    ),
    const SizedBox(height: 10),
    ListTile(
      tileColor: const Color.fromARGB(255, 220, 237, 233),
      title: Center(
          child: Text(
        'Photo Gallery',
        style: style,
      )),
      onTap: () {
        Navigator.pushNamed(context, '/galleryList');
      },
    ),
  ];
}