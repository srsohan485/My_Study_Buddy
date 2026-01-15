import 'package:flutter/material.dart';

import 'onboarding/onboarding1.dart';
import 'onboarding/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

    );
  }

}
