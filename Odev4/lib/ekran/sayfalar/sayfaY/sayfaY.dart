import 'package:flutter/material.dart';
import 'package:odev4/ekran/sayfalar/renk.dart';
import 'package:odev4/ekran/sayfalar/sayfaY/background.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  State<SayfaY> createState() => _SayfaYState();
}
class _SayfaYState extends State<SayfaY> {

  Future<bool>geriTusu(BuildContext context)async{
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: anaRenk2,
        content: const Text("Anasayfaya Navigasyon Geri Tuşu ile Dönüldü. ",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
    );
    print("Navigation Geri Tuşu Tıklandı.",);
    Navigator.of(context).popUntil((route) => route.isFirst);
    return true;  // true yaparsak navigation tuşu geri dönüş yapar.
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: WillPopScope(onWillPop: ()=>geriTusu(context),
        child: Center(
          child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [],
          ) ,
        ),
      ),
    );
  }
}
