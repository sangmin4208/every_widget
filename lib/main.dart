import 'package:every_widget/pages/preferred_size_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Every Widget',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      themeMode: ThemeMode.dark,
      home: const PreferredSizePage(),
    );
  }
}
