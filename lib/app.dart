import 'package:flutter/material.dart';
import 'package:mcdonald_clone/screens/landing/landing.dart';
import 'package:mcdonald_clone/style.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LandingScreen(),
      debugShowCheckedModeBanner: false,
      theme: _theme(),
    );
  }

  ThemeData _theme() {
    return ThemeData(
      backgroundColor: backgroundColor,
      primaryColor: primaryColor,
      textTheme: const TextTheme(
        bodyText2: bodyText2,
      ),
    );
  }
}
