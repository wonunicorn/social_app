// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedin,
    required TResult Function() registered,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedin,
    TResult? Function()? registered,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedin,
    TResult Function()? registered,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthLoggedinState value) loggedin,
    required TResult Function(_AuthRegisteredState value) registered,
    required TResult Function(_AuthErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthLoggedinState value)? loggedin,
    TResult? Function(_AuthRegisteredState value)? registered,
    TResult? Function(_AuthErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthLoggedinState value)? loggedin,
    TResult Function(_AuthRegisteredState value)? registered,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthInitialStateCopyWith<$Res> {
  factory _$$_AuthInitialStateCopyWith(
          _$_AuthInitialState value, $Res Function(_$_AuthInitialState) then) =
      __$$_AuthInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthInitialStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthInitialState>
    implements _$$_AuthInitialStateCopyWith<$Res> {
  __$$_AuthInitialStateCopyWithImpl(
      _$_AuthInitialState _value, $Res Function(_$_AuthInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthInitialState implements _AuthInitialState {
  const _$_AuthInitialState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedin,
    required TResult Function() registered,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedin,
    TResult? Function()? registered,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedin,
    TResult Function()? registered,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthLoggedinState value) loggedin,
    required TResult Function(_AuthRegisteredState value) registered,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthLoggedinState value)? loggedin,
    TResult? Function(_AuthRegisteredState value)? registered,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthLoggedinState value)? loggedin,
    TResult Function(_AuthRegisteredState value)? registered,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthInitialState implements AuthState {
  const factory _AuthInitialState() = _$_AuthInitialState;
}

/// @nodoc
abstract class _$$_AuthLoadingStateCopyWith<$Res> {
  factory _$$_AuthLoadingStateCopyWith(
          _$_AuthLoadingState value, $Res Function(_$_AuthLoadingState) then) =
      __$$_AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthLoadingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthLoadingState>
    implements _$$_AuthLoadingStateCopyWith<$Res> {
  __$$_AuthLoadingStateCopyWithImpl(
      _$_AuthLoadingState _value, $Res Function(_$_AuthLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthLoadingState implements _AuthLoadingState {
  const _$_AuthLoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedin,
    required TResult Function() registered,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedin,
    TResult? Function()? registered,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedin,
    TResult Function()? registered,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthLoggedinState value) loggedin,
    required TResult Function(_AuthRegisteredState value) registered,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthLoggedinState value)? loggedin,
    TResult? Function(_AuthRegisteredState value)? registered,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthLoggedinState value)? loggedin,
    TResult Function(_AuthRegisteredState value)? registered,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthLoadingState implements AuthState {
  const factory _AuthLoadingState() = _$_AuthLoadingState;
}

/// @nodoc
abstract class _$$_AuthLoggedinStateCopyWith<$Res> {
  factory _$$_AuthLoggedinStateCopyWith(_$_AuthLoggedinState value,
          $Res Function(_$_AuthLoggedinState) then) =
      __$$_AuthLoggedinStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthLoggedinStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthLoggedinState>
    implements _$$_AuthLoggedinStateCopyWith<$Res> {
  __$$_AuthLoggedinStateCopyWithImpl(
      _$_AuthLoggedinState _value, $Res Function(_$_AuthLoggedinState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthLoggedinState implements _AuthLoggedinState {
  const _$_AuthLoggedinState();

  @override
  String toString() {
    return 'AuthState.loggedin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthLoggedinState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedin,
    required TResult Function() registered,
    required TResult Function(String message) error,
  }) {
    return loggedin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedin,
    TResult? Function()? registered,
    TResult? Function(String message)? error,
  }) {
    return loggedin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedin,
    TResult Function()? registered,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loggedin != null) {
      return loggedin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthLoggedinState value) loggedin,
    required TResult Function(_AuthRegisteredState value) registered,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return loggedin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthLoggedinState value)? loggedin,
    TResult? Function(_AuthRegisteredState value)? registered,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return loggedin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthLoggedinState value)? loggedin,
    TResult Function(_AuthRegisteredState value)? registered,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loggedin != null) {
      return loggedin(this);
    }
    return orElse();
  }
}

abstract class _AuthLoggedinState implements AuthState {
  const factory _AuthLoggedinState() = _$_AuthLoggedinState;
}

/// @nodoc
abstract class _$$_AuthRegisteredStateCopyWith<$Res> {
  factory _$$_AuthRegisteredStateCopyWith(_$_AuthRegisteredState value,
          $Res Function(_$_AuthRegisteredState) then) =
      __$$_AuthRegisteredStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthRegisteredStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthRegisteredState>
    implements _$$_AuthRegisteredStateCopyWith<$Res> {
  __$$_AuthRegisteredStateCopyWithImpl(_$_AuthRegisteredState _value,
      $Res Function(_$_AuthRegisteredState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthRegisteredState implements _AuthRegisteredState {
  const _$_AuthRegisteredState();

  @override
  String toString() {
    return 'AuthState.registered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthRegisteredState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedin,
    required TResult Function() registered,
    required TResult Function(String message) error,
  }) {
    return registered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedin,
    TResult? Function()? registered,
    TResult? Function(String message)? error,
  }) {
    return registered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedin,
    TResult Function()? registered,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthLoggedinState value) loggedin,
    required TResult Function(_AuthRegisteredState value) registered,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthLoggedinState value)? loggedin,
    TResult? Function(_AuthRegisteredState value)? registered,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthLoggedinState value)? loggedin,
    TResult Function(_AuthRegisteredState value)? registered,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class _AuthRegisteredState implements AuthState {
  const factory _AuthRegisteredState() = _$_AuthRegisteredState;
}

/// @nodoc
abstract class _$$_AuthErrorStateCopyWith<$Res> {
  factory _$$_AuthErrorStateCopyWith(
          _$_AuthErrorState value, $Res Function(_$_AuthErrorState) then) =
      __$$_AuthErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_AuthErrorStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthErrorState>
    implements _$$_AuthErrorStateCopyWith<$Res> {
  __$$_AuthErrorStateCopyWithImpl(
      _$_AuthErrorState _value, $Res Function(_$_AuthErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_AuthErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthErrorState implements _AuthErrorState {
  const _$_AuthErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthErrorStateCopyWith<_$_AuthErrorState> get copyWith =>
      __$$_AuthErrorStateCopyWithImpl<_$_AuthErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedin,
    required TResult Function() registered,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedin,
    TResult? Function()? registered,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedin,
    TResult Function()? registered,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthLoggedinState value) loggedin,
    required TResult Function(_AuthRegisteredState value) registered,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthLoggedinState value)? loggedin,
    TResult? Function(_AuthRegisteredState value)? registered,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthLoggedinState value)? loggedin,
    TResult Function(_AuthRegisteredState value)? registered,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthErrorState implements AuthState {
  const factory _AuthErrorState({required final String message}) =
      _$_AuthErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_AuthErrorStateCopyWith<_$_AuthErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
