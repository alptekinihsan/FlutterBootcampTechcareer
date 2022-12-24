import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        title: const Text("SAYFA X",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45),),
        centerTitle: true,
        backgroundColor: Colors.grey,
        leading: IconButton(onPressed: (){
          print("Appbar Geri Tuşu Tıklandı.");
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
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

