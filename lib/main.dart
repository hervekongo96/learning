import 'package:flutter/material.dart';
import 'home.dart';
import 'navaigatio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'learning',
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => const MyHomePage(),
          "/navigation": (context) => const NavP(),
        });
  }
}
