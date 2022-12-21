import 'package:flutter/material.dart';
import 'package:flutterodev3/renkler.dart';

class Chipbutton extends StatelessWidget {


  String buton;

  Chipbutton({required this.buton});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width*0.5,
            height: size.height*0.15,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
              child: ElevatedButton(onPressed:(){
              },
                child: Text(buton),
                style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
