import 'package:flutter_bloc_demo/widget/counter_view.dart';
import 'package:flutter_bloc_demo/cubit/text_cubit.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_demo/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
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