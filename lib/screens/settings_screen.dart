import 'package:flutter/material.dart';

import '../widgets/sidemenu_widget.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  int gender = 1;
  String name = 'Fernando';

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
                  value: isDarkMode,
                  title: const Text('Dark Mode'),
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  }),
              const Divider(),
              RadioListTile<int>(
                  value: 0,
                  groupValue: gender,
                  title: const Text('Male'),
                  onChanged: (value) {
                    setState(() {
                      gender = value ?? 0;
                    });
                  }),
              const Divider(),
              RadioListTile<int>(
                  value: 1,
                  groupValue: gender,
                  title: const Text('Female'),
                  onChanged: (value) {
                    setState(() {
                      gender = value ?? 1;
                    });
                  }),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Fernando',
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
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
