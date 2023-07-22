// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shell.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShellBlocState {
  int get currentIndex => throw _privateConstructorUsedError;
  String? get modalData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShellBlocStateCopyWith<ShellBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShellBlocStateCopyWith<$Res> {
  factory $ShellBlocStateCopyWith(
          ShellBlocState value, $Res Function(ShellBlocState) then) =
      _$ShellBlocStateCopyWithImpl<$Res, ShellBlocState>;
  @useResult
  $Res call({int currentIndex, String? modalData});
}

/// @nodoc
class _$ShellBlocStateCopyWithImpl<$Res, $Val extends ShellBlocState>
    implements $ShellBlocStateCopyWith<$Res> {
  _$ShellBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? modalData = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      modalData: freezed == modalData
          ? _value.modalData
          : modalData // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShellBlocStateCopyWith<$Res>
    implements $ShellBlocStateCopyWith<$Res> {
  factory _$$_ShellBlocStateCopyWith(
          _$_ShellBlocState value, $Res Function(_$_ShellBlocState) then) =
      __$$_ShellBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex, String? modalData});
}

/// @nodoc
class __$$_ShellBlocStateCopyWithImpl<$Res>
    extends _$ShellBlocStateCopyWithImpl<$Res, _$_ShellBlocState>
    implements _$$_ShellBlocStateCopyWith<$Res> {
  __$$_ShellBlocStateCopyWithImpl(
      _$_ShellBlocState _value, $Res Function(_$_ShellBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? modalData = freezed,
  }) {
    return _then(_$_ShellBlocState(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      modalData: freezed == modalData
          ? _value.modalData
          : modalData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ShellBlocState implements _ShellBlocState {
  const _$_ShellBlocState({required this.currentIndex, this.modalData});

  @override
  final int currentIndex;
  @override
  final String? modalData;

  @override
  String toString() {
    return 'ShellBlocState(currentIndex: $currentIndex, modalData: $modalData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShellBlocState &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.modalData, modalData) ||
                other.modalData == modalData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex, modalData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShellBlocStateCopyWith<_$_ShellBlocState> get copyWith =>
      __$$_ShellBlocStateCopyWithImpl<_$_ShellBlocState>(this, _$identity);
}

abstract class _ShellBlocState implements ShellBlocState {
  const factory _ShellBlocState(
      {required final int currentIndex,
      final String? modalData}) = _$_ShellBlocState;

  @override
  int get currentIndex;
  @override
  String? get modalData;
  @override
  @JsonKey(ignore: true)
  _$$_ShellBlocStateCopyWith<_$_ShellBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
