import 'package:blabla_car/widgets/actions/bla_button.dart';
import 'package:flutter/material.dart';

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
      home: Scaffold(body: Column(
      children: [
        BlaButton(
          text: "test primary",
          onPressed: () { print("test");},
        ),
        BlaButton(
          isOutlined: true,
          textColor: BlaColors.blue,
          text: "test primary",
          onPressed: () {},
        ),
        BlaButton(
          icon: Icons.access_alarm,
          text: "test primary with icon",
          onPressed: () {},
        ),

      ],
    )),
    );
  }
}
