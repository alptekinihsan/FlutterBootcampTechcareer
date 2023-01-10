import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odev7/data/entity/todo_entity.dart';
import 'package:odev7/todo/cubit/anasayfa_cubit.dart';
import 'package:odev7/todo/screen/todo_detay.dart';
import 'package:odev7/todo/screen/todo_kayit.dart';
class Anasayfa extends StatefulWidget {

  const Anasayfa({
    Key? key,

  }) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  bool aramaYapiliyorMu = false;


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AnasayfaCubit>().TodoYukle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title:aramaYapiliyorMu ?
        TextField(decoration: const InputDecoration(hintText: "Ara"),
            onChanged:(aramaSonuc){
          context.read<AnasayfaCubit>().ara(aramaSonuc);
        }):
         Center(child: Text("Todo",)),
        actions: [
          aramaYapiliyorMu ?
          IconButton(onPressed: (){
            setState(() {aramaYapiliyorMu = false; });

          }, icon:const Icon(Icons.clear)):
          IconButton(onPressed: (){
            setState(() {aramaYapiliyorMu = true;});
          }, icon:const Icon(Icons.search)),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: BlocBuilder<AnasayfaCubit,List<Todo>>(
          builder: (context,todoListesi){
            if(todoListesi.isNotEmpty){
              return ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: todoListesi!.length,
                itemBuilder: (context,indeks){
                  var todo = todoListesi[indeks];
                  return GestureDetector(
                    child: Card(
                      color: Colors.pinkAccent,
                      shadowColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(60, 60))),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                            child:TextButton(onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>TodoDetay(todo: todo)))
                                  .then((value){context.read<AnasayfaCubit>().TodoYukle();});},
                              child: Text("${todo.name}",style: TextStyle(color: Colors.black,fontSize: 20),),
                              style: TextButton.styleFrom(

                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                              ),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: (){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("${todo.name} Silinsin mi ? "),
                                  action: SnackBarAction(
                                    label: "Evet",
                                    onPressed: (){
                                      context.read<AnasayfaCubit>().sil(todo.id);
                                    },
                                  ),
                                ),
                              );
                            }
                            , icon:const Icon(Icons.delete_outlined,color: Colors.white,),
                          ),



                        ],
                      ),
                    ),
                  );
                },
              );
            }else{
              return const Center();
            }
          },
        ),
      ),
      floatingActionButton: SizedBox(
        width: 40,
        height: 35,
        child: FloatingActionButton(

          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>TodoKayit()))
            .then((value){context.read<AnasayfaCubit>().TodoYukle();})
            ;
          },
          child: const Icon(Icons.add),backgroundColor: Colors.greenAccent,splashColor: Colors.pinkAccent,
        ),
      ),
    );
  }
}

