import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences_example/providers/theme_provider.dart';
import 'package:shared_preferences_example/utils/shared_preferences_util.dart';

import 'screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesUtil.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) =>
              ThemeProvider(isDarkMode: SharedPreferencesUtil.isDarkMode))
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routerName,
        routes: {
          HomeScreen.routerName: (_) => const HomeScreen(),
          SettingsScreen.routerName: (_) => const SettingsScreen(),
        },
        theme: Provider.of<ThemeProvider>(context).currentTheme);
  }
}
