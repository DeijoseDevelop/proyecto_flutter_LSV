import 'dart:convert';

import 'package:flutter/services.dart';

class _GalleryProvider {
  List<dynamic> options = [];
  Future<List<dynamic>> cargarData() async {
    final res = await rootBundle.loadString('assets/routes/list_routes.json');
    Map dataMap = json.decode(res);
    options = dataMap['routes'];
    return options;
  }
}

final menuProvider = _GalleryProvider();
