import 'package:bloc/bloc.dart';
import 'global_state.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// {@endtemplate}
class GlobalCubit extends Cubit<GlobalState> {
  /// {@macro counter_cubit}
  GlobalCubit() : super(GlobalState(counter:0,displayText:""));


  /// Add 1 to the current state.
  void increment() => emit(
      GlobalState(counter:state.counter + 1,displayText:state.displayText)
  );

  /// Subtract 1 from the current state.
  void decrement() => emit(GlobalState(counter:state.counter - 1,displayText:state.displayText));

}