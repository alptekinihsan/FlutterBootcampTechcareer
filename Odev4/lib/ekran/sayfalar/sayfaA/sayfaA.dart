import 'package:flutter/material.dart';
import 'package:odev4/ekran/sayfalar/renk.dart';
import 'package:odev4/ekran/sayfalar/sayfaA/background.dart';
import 'package:odev4/ekran/sayfalar/sayfaB/sayfaB.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Container(
            width: size.width*0.6,
            height: size.height*0.2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
              child: ElevatedButton(onPressed:(){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: anaRenk2,
                    content: const Text("Sayfa A' dan Sayfa B' ye Geçildi. ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                );
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaB()));
                },
                child: Text("GİT > B",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
                style: TextButton.styleFrom(shadowColor: Colors.purple,
                  foregroundColor: Colors.white,
                  backgroundColor: anaRenk2,
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
