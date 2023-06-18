import 'package:flutter/material.dart';

class profileTabPage extends StatefulWidget {
  const profileTabPage({super.key});

  @override
  State<profileTabPage> createState() => _profileTabPageState();
}

class _profileTabPageState extends State<profileTabPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Profile Tab'),
      ),
    );
  }
}
