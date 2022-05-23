import 'package:flutter/material.dart';

// my imports
import 'package:final_project_of_mobile/src/pages/cont_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Center(
        child: ContPage(),
      ),
      theme: ThemeData.dark(),
    );
  }
}
