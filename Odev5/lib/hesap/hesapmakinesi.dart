import 'package:flutter/material.dart';
import 'package:odev5/hesap/buttons.dart';
import 'package:math_expressions/math_expressions.dart';

class HesapMakinesi extends StatefulWidget {

  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  var girdi = '';
  var sonuc = '';

  // Liste
  final List<String> button = [
    '7',
    '8',
    '9',
    'AC',

    '4',
    '5',
    '6',
    '<-',

    '1',
    '2',
    '3',
    '+',

    '0',
    '00',
    '.',
    '=',
  ];

  bool butonDurum(String x) {
    if (x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  void degerEsit() {
    if(girdi.isEmpty){
      sonuc="0";
    }else{
      String songirdi = girdi;
      Parser p = Parser();
      Expression exp = p.parse(songirdi);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      sonuc = eval.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hesap Makinesi",style: TextStyle(color: Colors.black),),),
        backgroundColor: Colors.white70,
      ), //AppBar
      backgroundColor: Colors.white70,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        girdi,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.centerRight,
                      child: Text(
                        sonuc,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: GridView.builder(
                  itemCount: button.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {

                    // Hepsini Temizleme
                    if (index == 3) {
                      return ButonTiklanma(
                        butontiklanma: () {
                          setState(() {
                            girdi = '';
                            sonuc = '';
                          });
                        },
                        butonYazi: button[index],
                        renk: Colors.greenAccent,
                        yaziRenk: Colors.black,
                      );
                    }

                    // Geri alma
                    else if (index == 7) {
                      return ButonTiklanma(
                        butontiklanma: () {
                          setState(() {
                            if(girdi.length>0){
                              girdi =girdi.substring(0,girdi.length - 1)  ;
                            }else{
                              girdi;
                            }
                          });
                        },
                        butonYazi: button[index],
                        renk: Colors.red,
                        yaziRenk: Colors.black,
                      );
                    }
                    // Eşittir İşlem
                    else if (index == 15) {
                      return ButonTiklanma(
                        butontiklanma: () {
                          setState(() {
                            degerEsit();
                          });
                        },
                        butonYazi: button[index],
                        renk: Colors.blueAccent,
                        yaziRenk: Colors.white,
                      );
                    }
                    //  Sayılar
                    else {
                      return ButonTiklanma(
                        butontiklanma: () {
                          setState(() {
                            girdi += button[index];
                          });
                        },
                        butonYazi: button[index],
                        renk: butonDurum(button[index])
                            ? Colors.pinkAccent
                            : Colors.white,
                        yaziRenk: butonDurum(button[index])
                            ? Colors.white
                            : Colors.black,
                      );
                    }
                  }), // GridView.builder
            ),
          ),
        ],
      ),
    );
  }

}