import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences_example/providers/theme_provider.dart';
import 'package:shared_preferences_example/utils/shared_preferences_util.dart';

import '../widgets/sidemenu_widget.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                  value: SharedPreferencesUtil.isDarkMode,
                  title: const Text('Dark Mode'),
                  onChanged: (value) {
                    final themProvider =
                        Provider.of<ThemeProvider>(context, listen: false);
                    value
                        ? themProvider.setDarkMode()
                        : themProvider.setLightMode();
                    SharedPreferencesUtil.isDarkMode = value;
                    setState(() {});
                  }),
              const Divider(),
              RadioListTile<int>(
                  value: 0,
                  groupValue: SharedPreferencesUtil.gender,
                  title: const Text('Male'),
                  onChanged: (value) {
                    setState(() {
                      SharedPreferencesUtil.gender = value ?? 0;
                    });
                  }),
              const Divider(),
              RadioListTile<int>(
                  value: 1,
                  groupValue: SharedPreferencesUtil.gender,
                  title: const Text('Female'),
                  onChanged: (value) {
                    setState(() {
                      SharedPreferencesUtil.gender = value ?? 1;
                    });
                  }),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: SharedPreferencesUtil.name,
                  onChanged: (value) {
                    setState(() {
                      SharedPreferencesUtil.name = value;
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
