import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 30),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          _gallery('https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&h=650&w=940'),
          const SizedBox(height: 10),
          _gallery('https://images.pexels.com/photos/36744/agriculture-arable-clouds-countryside.jpg?auto=compress&cs=tinysrgb&h=650&w=940'),
          const SizedBox(height: 10),
          _gallery('https://images.pexels.com/photos/46710/pexels-photo-46710.jpeg?auto=compress&cs=tinysrgb&h=650&w=940'),
          const SizedBox(height: 10),
          _gallery('https://images.pexels.com/photos/1181271/pexels-photo-1181271.jpeg?auto=compress&cs=tinysrgb&h=650&w=940'),
          const SizedBox(height: 10),
          _gallery('https://images.pexels.com/photos/1192057/pexels-photo-1192057.jpeg?auto=compress&cs=tinysrgb&h=650&w=940'),
        ],
      ),
    );
  }

  Widget _gallery(url) {
    final card = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FadeInImage(
          placeholder: const AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(url),
          fadeInDuration: const Duration(milliseconds: 100),
          height: 250.0,
          fit: BoxFit.fitWidth,
        ),
        const Text('Text to Card'),
    ],
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black45,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: card,
      ),
    );
  }
}
