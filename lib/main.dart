import 'package:flutter/material.dart';
import 'package:krypton/core/app_view.dart';

import 'core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Krypton',
      theme: AppTheme.theme,
      home: const AppView(),
    );
  }
}
