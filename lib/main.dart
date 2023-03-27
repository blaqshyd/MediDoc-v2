import 'package:demo_app/src/utils/theme/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'src/views/main_page.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(),
      ),
    );
// const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const MainPage(),
    );
  }
}
