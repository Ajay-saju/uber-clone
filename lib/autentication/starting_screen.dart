import 'package:flutter/material.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asset/ Stating page.jpg'))),
    );
  }
}