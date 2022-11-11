import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:krypton/core/app_view.dart';

import 'core/theme.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const ProviderScope(child: MyApp()),
    ),
  );
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
