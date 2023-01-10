

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odev7/data/repo/todo_repository.dart';



class TodoKayitCubit extends Cubit<void>{

  TodoKayitCubit():super(0);
  var trepo = TodoDaoRepository();

  Future<void> kaydet(String name)async{
    await trepo.kaydet(name);
  }

}