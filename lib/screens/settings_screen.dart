import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seetings '),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('SettingsScreen'),
      ),
    );
  }
}
