import 'package:flutter/material.dart';
import 'package:odev4/ekran/sayfalar/anasayfa/background.dart';
import 'package:odev4/ekran/sayfalar/renk.dart';
import 'package:odev4/ekran/sayfalar/sayfaA/sayfaA.dart';
import 'package:odev4/ekran/sayfalar/sayfaX/sayfaX.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Container(
            child: SizedBox(height: 200,
              child: Column(
                children: [
                  Container(
                    width: size.width*0.6,
                    height: size.height*0.2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                      child: ElevatedButton(
                        onPressed:(){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: anaRenk2,
                              content: const Text("Anasayfadan Sayfa A'ya Geçildi. ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                            ),
                          );
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaA()));
                      },
                        child: const Text("GİT > A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
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
            ),
          ),
          Container(
            child: SizedBox(height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width*0.6,
                    height: size.height*0.2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                      child: ElevatedButton(
                        onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: anaRenk2,
                              content: const Text("Anasayfadan Sayfa X'e Geçildi. ",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                          );
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaX()));
                        },
                        child: const Text("GİT > X",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
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
            ),
          ),
        ],
      ),
    );
  }
}
