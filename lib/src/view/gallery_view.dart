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
      body: _gallery(),
    );
  }

  Widget _gallery() {
    return Container(
      child: Column(
      children: const <Widget>[
         FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('assets/pexels-christina-morillo-1181271.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        ),
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('assets/pexels-mike-1192057(1).jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        ),
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('assets/pexels-nitin-dhumal-46710.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        ),
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('assets/pexels-pixabay-36744.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        ),
        FadeInImage(
          placeholder: AssetImage('jar-loading.gif'),
          image: NetworkImage('pexels-pixabay-417173.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        ),
      ],
    ),
    );
  }
}
