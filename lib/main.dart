import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:medidoc/utils/theme/theme.dart';
import 'package:medidoc/views/messages.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const Messages(),
    );
  }
}
