import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'shell.bloc.freezed.dart';

@freezed
class ShellBlocState with _$ShellBlocState {
  const factory ShellBlocState({
    required int currentIndex,
    String? modalData,
  }) = _ShellBlocState;

  factory ShellBlocState.initial() => const ShellBlocState(
        currentIndex: 0,
        modalData: null,
      );
}

sealed class ShellBlocEvent {}

final class ButtonTapEvent implements ShellBlocEvent {
  final int index;

  ButtonTapEvent({required this.index});
}

final class ShowModalEvent implements ShellBlocEvent {
  final String data;

  ShowModalEvent({required this.data});
}

final class HideModalEvent implements ShellBlocEvent {}

@injectable
class ShellBloc extends Bloc<ShellBlocEvent, ShellBlocState> {
  ShellBloc() : super(ShellBlocState.initial()) {
    on<ShellBlocEvent>((event, emit) {
      switch (event) {
        case ButtonTapEvent(index: var i):
          emit(state.copyWith(currentIndex: i));
          break;
        case ShowModalEvent(data: var d):
          emit(state.copyWith(modalData: d));
          break;
        case HideModalEvent():
          emit(state.copyWith(modalData: null));
          break;
      }
    });
  }
}
