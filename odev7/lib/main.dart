import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odev7/todo/cubit/anasayfa_cubit.dart';
import 'package:odev7/todo/cubit/todo_detay_cubit.dart';
import 'package:odev7/todo/cubit/todo_kayit_cubit.dart';
import 'package:odev7/todo/screen/anasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>TodoKayitCubit()),
        BlocProvider(create: (context)=>TodoDetayCubit()),
        BlocProvider(create: (context)=>AnasayfaCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: const Anasayfa(),
      ),
    );
  }
}
