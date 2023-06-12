import 'package:ecommerce_app2/pages/Home_page.dart';
import 'package:ecommerce_app2/pages/authentic/register_page.dart';
import 'package:flutter/material.dart';
import 'pages/authentic/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
