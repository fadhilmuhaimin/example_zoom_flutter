import 'package:example_zoom_flutter/screens/login_screen.dart';
import 'package:example_zoom_flutter/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoom Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        '/login' : (context) => const LoginScreen(),
      },
      home: const LoginScreen(),
    );
  }
}

