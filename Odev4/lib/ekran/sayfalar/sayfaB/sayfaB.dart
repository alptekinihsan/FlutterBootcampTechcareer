import 'package:flutter/material.dart';
import 'package:odev4/ekran/sayfalar/renk.dart';
import 'package:odev4/ekran/sayfalar/sayfaB/background.dart';
import 'package:odev4/ekran/sayfalar/sayfaY/sayfaY.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({Key? key}) : super(key: key);

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {

  Future<bool>geriTusu(BuildContext context)async{
    print("Navigation Geri Tuşu Tıklandı.",);
    Navigator.of(context).popUntil((route) => route.isFirst);
    return false;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: WillPopScope(onWillPop: ()=> geriTusu(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Container(
              child: Column(
                children: [
                  Container(
                    width: size.width*0.6,
                    height: size.height*0.2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                      child: ElevatedButton(onPressed:(){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: anaRenk2,
                            content: const Text("Sayfa B'den Sayfa Y'ye Geçildi. ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                        );
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaY()));
                      },
                        child: Text("GİT > Y",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
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
          ],
        ),
      ),
    );
  }
}
