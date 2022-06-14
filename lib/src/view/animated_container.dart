import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Lottie.asset('assets/car-services.json', controller: _controller,
          onLoaded: (composition) {
        setState(() {
          _controller.duration = composition.duration;
        });
      }),
      Text(_controller.value.toStringAsFixed(2)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Play backward
          IconButton(
            icon: const Icon(Icons.arrow_left),
            onPressed: () {
              _controller.reverse();
            },
          ),
          // Pause
          IconButton(
            icon: const Icon(Icons.pause),
            onPressed: () {
              _controller.stop();
            },
          ),
          // Play forward
          IconButton(
            icon: const Icon(Icons.arrow_right),
            onPressed: () {
              _controller.forward();
            },
          ),
        ],
      ),
      const SizedBox(height: 30),
      ElevatedButton(
        onPressed: () {
          const start = 0.1;
          const stop = 0.5;
          _controller.repeat(
            min: start,
            max: stop,
            reverse: true,
            period: _controller.duration! * (stop - start),
          );
        },
          child: const Text('Play'),
        ),
        ],
      ),
    );
  }
}


/*
class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOutCirc,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _changeForm,
          child: const Icon(Icons.play_arrow),
        ));
  }

  void _changeForm() {
    setState(() {
      _width = Random().nextInt(300).toDouble();
      _height = Random().nextInt(300).toDouble();
      _color = Color.fromRGBO(
        Random().nextInt(300),
        Random().nextInt(300),
        Random().nextInt(300), 1);
      _borderRadius = BorderRadius.circular(Random().nextInt(100).toDouble());
    });
  }
}

 */