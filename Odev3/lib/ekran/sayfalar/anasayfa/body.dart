import 'package:flutter/material.dart';
import 'package:flutterodev3/ekran/sayfalar/anasayfa/background.dart';
import 'package:flutterodev3/ekran/sayfalar/giris.dart';
import 'package:flutterodev3/renkler.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        const Text("Face Make Up",style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Image.asset(
            "assets/images/kullanicigiris.png",
            width:150,
            height:150
        ),
        Container(
          width: size.width*0.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Giris()));
              },
              child: const Text("Giriş Yap"),
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
          ),
        ),
        Container(
          width: size.width*0.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
            child: ElevatedButton(
              onPressed: (){},
              child: Text("Kayıt Ol"),
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
