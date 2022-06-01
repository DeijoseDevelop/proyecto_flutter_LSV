import 'package:flutter/material.dart';

void showAlert(BuildContext context, String name, String url){
  showDialog(
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title: Text(name),
        content: FadeInImage(
          placeholder: const AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(url),
          fadeInDuration: const Duration(milliseconds: 100),
          fit: BoxFit.contain,
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    }
  );
}
