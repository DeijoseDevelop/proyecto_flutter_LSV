import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:async';

class Animation02 extends StatefulWidget {
  const Animation02({Key? key}) : super(key: key);

  @override
  State<Animation02> createState() => _Animation02State();
}

class _Animation02State extends State<Animation02> {
  final List<int> _images = [];
  int _ultimoItem = 0;

  final _pageController = PageController();
  double _currentPage = 0.0;

  void _listener() {
    setState(() {
      _currentPage = _pageController.page!;
    });
  }

  @override
  void initState() {
    _agregar();
    _pageController.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.removeListener(_listener);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation 02'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: PageView.builder(
            controller: _pageController,
            physics: const BouncingScrollPhysics(),
            itemCount: _images.length,
            itemBuilder: (BuildContext context, int index) {
              final imagen = _images[index];
              final percent = _currentPage - index;
              final value = percent.clamp(0.0, 1.0);
              print(percent);
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Opacity(
                  opacity: 1 - value,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.002)
                      ..rotateX(pi * value),
                    child: FadeInImage(
                      placeholder: const AssetImage('assets/jar-loading.gif'),
                      image: NetworkImage(
                        'https://picsum.photos/1000/1000/?image=$imagen',
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> obtenerPagina1() async {
    const duration = Duration(seconds: 2);
    Timer(duration, () {
      _images.clear();
      _ultimoItem++;
      _agregar();
    });
    return Future.delayed(duration);
  }

  _agregar() {
    setState(() {
      for (var i = 0; i < 100; i++) {
        _ultimoItem++;
        _images.add(_ultimoItem);
      }
    });
  }
}
