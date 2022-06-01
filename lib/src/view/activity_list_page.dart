import 'package:flutter/material.dart';

import 'package:final_project_of_mobile/src/utils/games.dart';
import 'package:final_project_of_mobile/src/utils/alert.dart';


class ActivityListPage extends StatelessWidget {
  const ActivityListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity List Page'),
        centerTitle: true,
      ),
      body: Center(
        child: _createList(context),
      ),
    );
  }

  Widget _createList(BuildContext context) {
    return ListView.builder(
      itemCount: getGames().length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(getGames()[index].image!),
          ),
          title: Text(getGames()[index].name!),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: ()=> showAlert(context, getGames()[index].name!, getGames()[index].image!),
        );
      },
    );
  }
}
