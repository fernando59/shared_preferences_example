import 'package:flutter/material.dart';
import 'package:shared_preferences_example/utils/shared_preferences_util.dart';

import '../widgets/sidemenu_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              'Home Screen',
            ),
            centerTitle: true),
        drawer: const SideMenuWidget(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Is Dark Mode: ${SharedPreferencesUtil.isDarkMode} '),
            Divider(),
            Text(
                'Gender :  ${SharedPreferencesUtil.gender == 1 ? 'Female' : 'Male'}'),
            Divider(),
            Text('Name User : ${SharedPreferencesUtil.name} '),
            Divider(),
          ],
        ),
      ),
    );
  }
}
