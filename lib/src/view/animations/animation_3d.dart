import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';

class Animation3D extends StatefulWidget {
  const Animation3D({Key? key}) : super(key: key);

  @override
  State<Animation3D> createState() => _Animation3DState();
}

class _Animation3DState extends State<Animation3D> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation 3D'),
        centerTitle: true,
      ),
      body: BabylonJSViewer(
        src: 'assets/animations/Tren.glb',
      ),
    );
  }
}
