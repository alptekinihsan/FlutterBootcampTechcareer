import 'package:flutterbootcamp1/NesneTabanliProgramlama/odev2.dart';

void main(){

  var o2 =Odev2();
  print("--------------------------------------------");
  print("               1.SORU CEVAP                 ");
  print("--------------------------------------------");

  double donusum = o2.soru1(98);
  print("Fahrenhiet Karşılığı: $donusum");


  print("--------------------------------------------");
  print("               2.SORU CEVAP                 ");
  print("--------------------------------------------");

  o2.soru2(4, 6);


  print("--------------------------------------------");
  print("               3.SORU CEVAP                 ");
  print("--------------------------------------------");

  int sonucFaktoriyel = o2.soru3(5);
  print("Faktoriyel İşlem: $sonucFaktoriyel");


  print("--------------------------------------------");
  print("               4.SORU CEVAP                 ");
  print("--------------------------------------------");

  double aciSonuc = o2.soru4(3);
  print("Açının Değeri : $aciSonuc");


  print("--------------------------------------------");
  print("               5.SORU CEVAP                 ");
  print("--------------------------------------------");

  int otoSonuc = o2.soru5(4);
  print("Otopark Ücret Değeri : $otoSonuc");


  print("--------------------------------------------");
  print("               6.SORU CEVAP                 ");
  print("--------------------------------------------");

  double maasSonuc = o2.soru6(25.856);
  print("Çalışma Ücret Değeri : $maasSonuc ₺");


  print("--------------------------------------------");
  print("               7.SORU CEVAP                 ");
  print("--------------------------------------------");

  o2.soru7("Adanadan adam geldi");

  print("--------------------------------------------");

}