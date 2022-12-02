import 'package:bloc/bloc.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// {@endtemplate}
class TextCubit extends Cubit<String> {
  /// {@macro counter_cubit}
  TextCubit() : super("Hello");

  void updateText(String text) {
    emit(text);
  }
}