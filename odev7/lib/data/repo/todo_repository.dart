

import 'package:odev7/data/entity/todo_entity.dart';
import 'package:odev7/data/sqlite/database.dart';

class TodoDaoRepository{
  Future<void> kaydet(String name)async{
    var db = await VeriTabani.veriTabaniErisim();
    var bilgiler = Map<String,dynamic>();
    bilgiler["name"] = name;
    await db.insert("todo", bilgiler);

  }

  Future<void> guncelle(int id, String name)async{
    var db = await VeriTabani.veriTabaniErisim();
    var guncelleme = Map<String,dynamic>();
    guncelleme["name"]= name;

    await db.update("todo",guncelleme,where: "id=?",whereArgs:[id]);
    

  }

  Future<List<Todo>> TodoYukle()async{
    var db = await VeriTabani.veriTabaniErisim();
    List<Map<String,dynamic>>maps =await db.rawQuery("SELECT * FROM todo");
    return List.generate(maps.length, (i) {
      var satir = maps[i];
      return Todo(id: satir["id"], name: satir["name"]);
    });
  }

  Future<List<Todo>> ara(String aramaKelimesi)async{
    var db = await VeriTabani.veriTabaniErisim();
    List<Map<String,dynamic>>maps =await db.rawQuery("SELECT * FROM todo WHERE name LIKE '%$aramaKelimesi%'");
    return List.generate(maps.length, (i) {
      var satir = maps[i];
      return Todo(id: satir["id"], name: satir["name"]);
    });
  }
  Future<void> sil(int id) async{
    var db = await VeriTabani.veriTabaniErisim();
    await db.delete("todo",where: "id=?",whereArgs: [id]);

  }


}