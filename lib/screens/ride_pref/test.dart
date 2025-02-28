import 'package:blabla_car/widgets/actions/bla_button.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return BlaButton(icon: Icons.chat ,text:"Hellooo", onPressed: (){});
  }
}