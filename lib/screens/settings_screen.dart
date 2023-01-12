import 'package:flutter/material.dart';

import '../widgets/sidemenu_widget.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Seetings '),
          centerTitle: true,
        ),
        drawer: const SideMenuWidget(),
        body: const Center(
          child: Text('SettingsScreen'),
        ),
      ),
    );
  }
}
