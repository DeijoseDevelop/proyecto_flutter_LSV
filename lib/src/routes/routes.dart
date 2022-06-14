import 'package:flutter/material.dart';

// pages
import 'package:final_project_of_mobile/src/view/home_view.dart';
import 'package:final_project_of_mobile/src/view/counter_view.dart';
import 'package:final_project_of_mobile/src/view/count_screen.dart';
import 'package:final_project_of_mobile/src/view/cont_page.dart';
import 'package:final_project_of_mobile/src/view/gallery_view.dart';
import 'package:final_project_of_mobile/src/view/alert_view.dart';
import 'package:final_project_of_mobile/src/view/change_color.dart';
import 'package:final_project_of_mobile/src/view/activity_list_page.dart';
import 'package:final_project_of_mobile/src/view/firebase_list.dart';
import 'package:final_project_of_mobile/src/view/firebase_list_02.dart';


Map<String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomeView(),
    '/app': (BuildContext context) => const ContPage(),
    '/first': (BuildContext context) => const Counter(),
    '/task': (BuildContext context) => const CountScreen(),
    '/gallery': (BuildContext context) => const Gallery(),
    '/alert': (BuildContext context) => const AlertView(),
    '/changeColor': (BuildContext context) => const ChangeColor(),
    '/lista': (BuildContext context) => const ActivityListPage(),
    '/listaFirebase' : (BuildContext context) => const FirebaseList(),
    '/listaFirebase2' : (BuildContext context) => const FirebaseList02(),
  };
}