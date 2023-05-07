import 'package:flutter/material.dart';
import 'package:almanach/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'HomeScreen',
      routes: {
        'HomeScreen': (context) {
          return const HomeScreen();
        }
      },
    );
  }
}

void main() {
  runApp(
    const MyApp(),
  );
}

