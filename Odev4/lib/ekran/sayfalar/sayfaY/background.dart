import 'package:flutter/material.dart';
import 'package:odev4/ekran/sayfalar/renk.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text("SAYFA Y",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45),),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        leading: IconButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: anaRenk2,
                  content: const Text("Anasayfaya Appbar ile Dönüldü. ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),

                ),
              );
          print("Appbar Geri Tuşu Tıklandı.");
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      resizeToAvoidBottomInset: false,
      body:Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}

