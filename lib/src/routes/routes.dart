import 'package:flutter/material.dart';

// pages
import 'package:final_project_of_mobile/src/view/counter_view.dart';
import 'package:final_project_of_mobile/src/view/count_screen.dart';
import 'package:final_project_of_mobile/src/view/cont_page.dart';
import 'package:final_project_of_mobile/src/view/gallery_view.dart';
import 'package:final_project_of_mobile/src/view/alert_view.dart';
import 'package:final_project_of_mobile/src/view/change_color.dart';
import 'package:final_project_of_mobile/src/view/activity_list_page.dart';
import 'package:final_project_of_mobile/src/view/semana_2/firebase_list.dart';
import 'package:final_project_of_mobile/src/view/semana_2/firebase_list_02.dart';
import 'package:final_project_of_mobile/src/view/semana_3/splash/splash_screen.dart';
import 'package:final_project_of_mobile/src/view/semana_3/list_view_card/list_view_card.dart';
import 'package:final_project_of_mobile/src/view/animations/animation_3d.dart';
import 'package:final_project_of_mobile/src/view/animations/views/animation_01.dart';
import 'package:final_project_of_mobile/src/view/animations/views/animation_02.dart';
import 'package:final_project_of_mobile/src/view/project_final/gallery_photos/gallery.dart';


Map<String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const SplashScreenView(),
    '/app': (BuildContext context) => const ContPage(),
    '/first': (BuildContext context) => const Counter(),
    '/task': (BuildContext context) => const CountScreen(),
    '/gallery': (BuildContext context) => const Gallery(),
    '/alert': (BuildContext context) => const AlertView(),
    '/changeColor': (BuildContext context) => const ChangeColor(),
    '/lista': (BuildContext context) => const ActivityListPage(),
    '/listaFirebase' : (BuildContext context) => const FirebaseList(),
    '/listaFirebase2' : (BuildContext context) => const FirebaseList02(),
    '/listaCustomCard' : (BuildContext context) => const ListViewCard(),
    '/galleryList' : (BuildContext context) => const GalleryList(),
    '/animation3d' : (BuildContext context) => const Animation3D(),
    '/animation01' : (BuildContext context) => const Animation01(),
    '/animation02' : (BuildContext context) => const Animation02(),
  };
}