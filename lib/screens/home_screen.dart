import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Home Screen',
          ),
          centerTitle: true),
      body: const Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}