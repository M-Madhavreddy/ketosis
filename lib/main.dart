import 'package:flutter/material.dart';

import 'Screens/FormScreen.dart';
import 'Screens/WelcomScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      routes: {
        '/FormScreen': (ctx) => FormScreen(),
      },
    );
  }
}
