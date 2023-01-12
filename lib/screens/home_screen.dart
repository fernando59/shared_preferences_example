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
        body: const Center(
          child: Text('HomeScreen'),
        ),
      ),
    );
  }
}
