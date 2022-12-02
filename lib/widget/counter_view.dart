import 'package:flutter_bloc_demo/cubit/text_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/cubit/counter_cubit.dart';
import 'package:flutter_bloc_demo/widget/counter_label.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class CounterView extends StatelessWidget {
  /// {@macro counter_view}
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = context.watch<CounterCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Bloc Provider \nCounter',textAlign: TextAlign.center,)),
      body: const Center(
          child:CounterLabel()
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () {
                counterCubit.increment();
              },
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () {
                counterCubit.decrement();
              },
          ),
        ],
      ),
    );
  }
}
