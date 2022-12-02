import 'package:cubit_test_app/counter_view.dart';
import 'package:cubit_test_app/cubit/global_cubit.dart';
import 'package:cubit_test_app/cubit/global_state.dart';
import 'package:cubit_test_app/cubit/text_cubit.dart';
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:cubit_test_app/counter_observer.dart';
import 'package:cubit_test_app/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    //return BlocProvider(create: (_) => CounterCubit(), child: const CounterView());
    // MultiBlocProvider
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => CounterCubit(),
          ),
          BlocProvider(
            create: (_) => TextCubit(),
          )
        ],

        child: const CounterView()
    );
  }
}