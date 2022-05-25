// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AlertView extends StatelessWidget {
  const AlertView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Map<String, String> urls = {
    'url1': 'https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
    'url2': 'https://images.pexels.com/photos/36744/agriculture-arable-clouds-countryside.jpg?auto=compress&cs=tinysrgb&h=650&w=940',
    'url3': 'https://images.pexels.com/photos/46710/pexels-photo-46710.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
    'url4': 'https://images.pexels.com/photos/1181271/pexels-photo-1181271.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
    'url5': 'https://images.pexels.com/photos/1192057/pexels-photo-1192057.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
    };


    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert View'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 30),
      ),
      body: Container(
          margin: const EdgeInsets.only(left: 100.0, right: 100.0,),
          child: _list(context, urls)
        ),
      );
  }

  Widget _list(context, urls){
    return ListView(
        children: <Widget>[
          const SizedBox(height: 50),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            shape: const StadiumBorder(),
            onPressed: () => _showAlert(context, urls['url1']),
            child: const Text('Image one'),
          ),
          const SizedBox(height: 50),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            shape: const StadiumBorder(),
            onPressed: () => _showAlert(context, urls['url2']),
            child: const Text('Image two'),
          ),
          const SizedBox(height: 50),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            shape: const StadiumBorder(),
            onPressed: () => _showAlert(context, urls['url3']),
            child: const Text('Image three'),
          ),
          const SizedBox(height: 50),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            shape: const StadiumBorder(),
            onPressed: () => _showAlert(context, urls['url4']),
            child: const Text('Image four'),
          ),
          const SizedBox(height: 50),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            shape: const StadiumBorder(),
            onPressed: () => _showAlert(context, urls['url5']),
            child: const Text('Image five'),
          ),
        ],
      );
  }

  void _showAlert(BuildContext context, url) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Alert'),
        content: FadeInImage(
          placeholder: const AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(url),
          fadeInDuration: const Duration(milliseconds: 100),
          height: 250.0,
          fit: BoxFit.fitWidth,
        ),
        actions: <Widget>[
          FlatButton(
            child: const Text('Ok'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
