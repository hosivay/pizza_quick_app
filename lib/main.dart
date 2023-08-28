import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:pizza_quick_app/feature_home/presentation/screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Quick',
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(scheme: FlexScheme.gold, useMaterial3: true),
      darkTheme:
          FlexThemeData.dark(scheme: FlexScheme.gold, useMaterial3: true),
      themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}
