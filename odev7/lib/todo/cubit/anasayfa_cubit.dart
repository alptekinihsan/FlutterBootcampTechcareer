

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odev7/data/entity/todo_entity.dart';
import 'package:odev7/data/repo/todo_repository.dart';

class AnasayfaCubit extends Cubit<List<Todo>>{

  AnasayfaCubit():super(<Todo>[]);
  var trepo = TodoDaoRepository();


  Future<void> TodoYukle()async{
    var liste = await trepo.TodoYukle();
    emit(liste);
  }

  Future<void> ara(String aramaKelimesi)async{
    var liste = await trepo.ara(aramaKelimesi);
    emit(liste);
  }

  Future<void> sil(int id) async{
    await trepo.sil(id); // silme yapıldı
    await TodoYukle();//yeni kişiler yükleniyor. yazmasaydık güncelleme yapamazdık.
  }

}