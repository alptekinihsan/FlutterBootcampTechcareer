import 'package:flutter/material.dart';
import 'package:flutterodev3/ekran/sayfalar/facemakeup.dart';
import 'package:flutterodev3/ekran/sayfalar/giris.dart';
import 'package:flutterodev3/ekran/sayfalar/giris/background.dart';
import 'package:flutterodev3/renkler.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String alinanVeri = "";
  String alinanSifre = "";
  var tfKontrol = TextEditingController();
  var tfKontrol2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text("FaceMakeUp Giriş",style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Image.asset(
              "assets/images/kullanicigiris.png",
              width:150,
              height:150,
          ),
          Text(alinanVeri =="ihsan" ?"":""),
          Container(
            width: size.width*1.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Giris()));
                },
                child: TextField(
                  controller: tfKontrol,
                  decoration: const InputDecoration(hintText: "Kullanıcı Adı:"),
                  keyboardType: TextInputType.text,
                ),
                style: TextButton.styleFrom(
                  backgroundColor: kPrimaryLightColor,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
          ),
          Text(alinanSifre =="3624" ?"":""),
          Container(
            width: size.width*1.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: ElevatedButton(
                onPressed: (){
                },
                child: TextField(
                  controller: tfKontrol2,
                  decoration: const InputDecoration(hintText: "Şifre"),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                 ),
                style: TextButton.styleFrom(
                  backgroundColor: kPrimaryLightColor,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
          ),
       // Text(alinanVeri=="ihsan" && alinanSifre=="3624" ? "Hoşgeldiniz" : "Kullanıcı Adı yada Şifre Yanlış",style: TextStyle(color: alinanVeri=="ihsan" && alinanSifre=="3624" ? Colors.blue : Colors.red),),
        ElevatedButton(onPressed: (){
            setState(() {
              alinanVeri = tfKontrol.text;
              alinanSifre = tfKontrol2.text;
            });
            Text(alinanVeri=="ihsan" && alinanSifre=="3624" ? "Hoşgeldiniz ${Navigator.push(context, MaterialPageRoute(builder: (context)=>const FaceMakeUp()))
              }" : "Kullanıcı Adı yada Şifre Yanlış ${Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Giris()))}",style: TextStyle(color: alinanVeri=="ihsan" && alinanSifre=="3624" ? Colors.blue : Colors.red),);
        },
              child: const Text("Giriş Yap"),
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryLightColor,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))) 
            ),
          ),

        ],

      ),
    );
  }
}
