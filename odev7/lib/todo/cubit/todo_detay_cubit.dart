import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odev7/data/repo/todo_repository.dart';

class TodoDetayCubit extends Cubit<void>{

  TodoDetayCubit():super(0);
  var trepo = TodoDaoRepository();


  Future<void> guncelle(int id, String name)async{
    await trepo.guncelle(id, name);
  }

}