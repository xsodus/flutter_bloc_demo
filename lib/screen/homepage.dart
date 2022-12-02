import 'package:flutter_bloc_demo/widget/counter_view.dart';
import 'package:flutter_bloc_demo/cubit/global_cubit.dart';
import 'package:flutter_bloc_demo/cubit/global_state.dart';
import 'package:flutter_bloc_demo/cubit/text_cubit.dart';
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_demo/observer/counter_observer.dart';
import 'package:flutter_bloc_demo/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => CounterCubit(), child: const CounterView());
  }
}