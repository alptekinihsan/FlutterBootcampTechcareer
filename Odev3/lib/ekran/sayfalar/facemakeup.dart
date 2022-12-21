import 'package:flutter/material.dart';
import 'package:flutterodev3/ekran/sayfalar/facemakeup/body.dart';

class FaceMakeUp extends StatefulWidget {
  const FaceMakeUp({Key? key}) : super(key: key);

  @override
  State<FaceMakeUp> createState() => _FaceMakeUpState();
}

class _FaceMakeUpState extends State<FaceMakeUp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
