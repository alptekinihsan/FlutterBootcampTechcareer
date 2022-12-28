import 'package:flutter/material.dart';

class ButonTiklanma extends StatelessWidget {

  final renk;
  final yaziRenk;
  final String butonYazi;
  final butontiklanma;

  ButonTiklanma({required this.renk,required this.yaziRenk,required this.butonYazi,required this.butontiklanma});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: butontiklanma,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            color: renk,
            child: Center(
              child: Text(
                butonYazi,
                style: TextStyle(
                  color: yaziRenk,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}