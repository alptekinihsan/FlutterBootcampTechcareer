import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odev7/todo/cubit/todo_kayit_cubit.dart';
import 'package:odev7/todo/screen/anasayfa.dart';

class TodoKayit extends StatefulWidget {
  const TodoKayit({Key? key}) : super(key: key);

  @override
  State<TodoKayit> createState() => _TodoKayitState();
}

class _TodoKayitState extends State<TodoKayit> {

  var tfTodoAd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.greenAccent,
      title: Text("Todo Kayıt"),

    ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width*1.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: SizedBox(
                    width: size.width*2.0,
                    height: size.width*0.2,
                    child: ElevatedButton(
                      onPressed: (){
                      },
                      child: TextField(
                        controller:tfTodoAd,
                        decoration: const InputDecoration(hintText: "Yapılacaklar"),style: TextStyle(fontSize: 20,color: Colors.deepPurple),),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                height: 75,
                child: ElevatedButton(onPressed: (){

                  if(tfTodoAd.text.isNotEmpty && tfTodoAd.text.length<=25){
                    Navigator.pop(context,MaterialPageRoute(builder: (context)=>Anasayfa()));
                    context.read<TodoKayitCubit>().kaydet(tfTodoAd.text);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.green,
                        content: const Text("Kayıt Başarılı.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),),
                      ),
                    );

                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.green,
                        content: const Text("Karakter Uzunluğu 25'i Geçemez",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),),
                      ),
                    );
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>TodoKayit()));
                  }
                },
                  style: ElevatedButton.styleFrom(foregroundColor: Colors.pinkAccent,backgroundColor: Colors.greenAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                    child:const Text("Kaydet",style: TextStyle(fontSize: 20),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
