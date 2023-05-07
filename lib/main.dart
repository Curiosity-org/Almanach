import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(
    const MyApp(),
  );
}

