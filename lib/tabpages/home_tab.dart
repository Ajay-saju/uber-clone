import 'package:flutter/material.dart';

class HomeTabpage extends StatefulWidget {
  const HomeTabpage({super.key});

  @override
  State<HomeTabpage> createState() => _HomeTabpageState();
}

class _HomeTabpageState extends State<HomeTabpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('HomeTab'),
      ),
    );
  }
}