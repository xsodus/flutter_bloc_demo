import 'package:cubit_test_app/cubit/text_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cubit_test_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';

class CounterLabel extends StatelessWidget{
  const CounterLabel({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = context.select((CounterCubit cubit) => cubit.state);
    final textCubit = context.select((TextCubit cubit) => cubit.state);
    final textTheme = Theme.of(context).textTheme;

    // Bloc Provider
    //return Text('Current value $counterCubit', style: textTheme.headline2);

    return Text('$textCubit $counterCubit', style: textTheme.headline2);
  }

}