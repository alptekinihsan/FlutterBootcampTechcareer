
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class VeriTabani{

  static final String veriTabaniAdi = "todo.sqlite";

  static Future<Database> veriTabaniErisim()async{

    String veritabaniYolu = join(await getDatabasesPath(),veriTabaniAdi);

    if(await databaseExists(veritabaniYolu)){
      print("Veri Tabanı Var");
    }else{
      ByteData data = await rootBundle.load("veritabani/$veriTabaniAdi");
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes,data.lengthInBytes);
      await File(veritabaniYolu).writeAsBytes(bytes,flush: true);
      print("Veri Tabanı Kopyalandı.");
    }
    return openDatabase(veritabaniYolu);

  }
}