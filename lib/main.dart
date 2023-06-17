import 'package:driver/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Driver App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: MySplashScreen()
          //  Scaffold(
          //   appBar: AppBar(
          //     title: Text('Welcome '),
          //   ),
          // )
          )));
}

class MyApp extends StatefulWidget {
  final Widget? child;
  const MyApp({super.key, this.child});
  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();
  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}
