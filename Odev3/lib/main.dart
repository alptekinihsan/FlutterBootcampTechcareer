import 'package:flutter/material.dart';
import 'package:flutterodev3/ekran/sayfalar/anasayfa.dart';
import 'package:flutterodev3/renkler.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(

        primaryColor:kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,

      ),
      home: const WelcomeScreen(),
    );
  }
}
