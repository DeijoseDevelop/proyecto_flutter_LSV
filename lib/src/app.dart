import 'package:final_project_of_mobile/src/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';

// my imports
import 'package:final_project_of_mobile/src/routes/routes.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /* home: const Center(
        child: HomeView(),
      ), */
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: getRoutes(),
    );
  }
}
