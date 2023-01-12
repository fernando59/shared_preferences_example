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
          title: const Text('Settings '),
          centerTitle: true,
        ),
        drawer: const SideMenuWidget(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: [
              const Text(
                'Settigns ',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              const Divider(),
              SwitchListTile.adaptive(
                  value: true,
                  title: const Text('Dark Mode'),
                  onChanged: (value) {}),
              const Divider(),
              RadioListTile<int>(
                  value: 0,
                  groupValue: 1,
                  title: const Text('Male'),
                  onChanged: (value) {}),
              const Divider(),
              RadioListTile<int>(
                  value: 1,
                  groupValue: 1,
                  title: const Text('Female'),
                  onChanged: (value) {}),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Fernando',
                  decoration: const InputDecoration(
                      label: Text('Name'), helperText: 'Name User'),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
