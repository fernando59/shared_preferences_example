import 'package:flutter/material.dart';

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
          children: const [
            Text('Is Dark Mode: '),
            Divider(),
            Text('Gender : '),
            Divider(),
            Text('Name User : '),
            Divider(),
          ],
        ),
      ),
    );
  }
}
