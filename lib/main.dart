
import 'package:blabla_car/screens/ride_pref/test.dart';
import 'package:flutter/material.dart';
import 'screens/ride_pref/ride_pref_screen.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Scaffold(body: Center( child: Test(),)),
      // home: Scaffold(body: RidePrefScreen()),
    );
  }
}
