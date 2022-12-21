import 'package:flutter/material.dart';
import 'package:flutterodev3/ekran/sayfalar/facemakeup.dart';
import 'package:flutterodev3/ekran/sayfalar/facemakeup/chip.dart';
import 'package:flutterodev3/ekran/sayfalar/giris.dart';
import 'package:flutterodev3/ekran/sayfalar/facemakeup/background.dart';
import 'package:flutterodev3/renkler.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text("FaceMakeUp",style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Image.asset(
              "assets/images/kullanicigiris.png",
              width:150,
              height:150,
          ),
          Container(
            child: Row(
              children: [
                Chipbutton(buton: "Peeling"),
                Chipbutton(buton: "Botoks"),
              ],
            ),
          ),
          Container(
              child: Row(
                children: [
                  Chipbutton(buton: "Epilasyon"),
                  Chipbutton(buton: "Protez"),
                ],
          )),
        ],
      ),
    );
  }
}
