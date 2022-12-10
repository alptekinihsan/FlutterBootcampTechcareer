class Odev2{
// Parametre olarak girilen dereceyi fahrenhiet'a dönüştürdükten sonra geri döndüren metod

  double soru1(double c){
    double fah = c*1.8+32;
    return fah;
  }

  void soru2(int a, int b){
    int cevre = (2*a + 2*b);
    if(a==b){
      print("Girilen a ve b değerleri eşit olduğundan sonuç karedir.");
      print("Kare'nin Çevresi: $cevre");
    }
    else{
      print("Dikdörgen'in Çevresi: $cevre");
    }
  }

  int soru3 (int fakt){
    int f =1;
    for(int i=1;i<=fakt;i++){
      f*=i;
    }
    return f;
  }


  double soru4(double kenarSayisi){
    double icaciToplami = (kenarSayisi-2)*180;
    double sonucAcihesap = icaciToplami / kenarSayisi;
    return sonucAcihesap;
  }



  int soru5 (int sure)
  {
    int saatDonusum = sure*60;
    int ucret=0;
    int toplamUcret = 50;

    if(saatDonusum<60){
      toplamUcret=ucret;
    }
    for (int i = 2; i <= sure; i++)
    {
      if(saatDonusum>60)
      {
        toplamUcret = toplamUcret + 10;
      }
    }
    return toplamUcret;
  }

  double soru6 (double gun)
  {
    double gunSaatdonusum = gun*8;
    double ucretSaat = 40;
    double ucretMesai = 80;
    double toplamMaas=0;
    double toplamMesaisaatMaas=0;
    double toplamyeniMesaiMaas=0;
    for(double i=0; i<=gun;i++)
    {
      if(gunSaatdonusum<=150)
      {
        toplamMaas = gunSaatdonusum*ucretSaat;
      }
      else{
        toplamMesaisaatMaas = (gunSaatdonusum-150)/8;
        toplamyeniMesaiMaas = toplamMesaisaatMaas*ucretMesai;
        toplamMaas=150*ucretSaat+toplamyeniMesaiMaas;
      }
    }
    return toplamMaas;
  }


  void soru7(String karakter){
    int sayac=0;
    String yenikarakter= karakter.toLowerCase();
    for(int i=0; i<=yenikarakter.length; i++){
      if(yenikarakter[i] == "a"){
        sayac=sayac+1;
        print("Metinde Geçen 'A' Karakteri Sayısı: $sayac");
      }
    }
  }



}