part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState{
  const factory AuthState.initial() = _AuthInitialState;
  const factory AuthState.loading() = _AuthLoadingState;
  const factory AuthState.loggedin() = _AuthLoggedinState;
  const factory AuthState.registered() = _AuthRegisteredState;
  const factory AuthState.error({
    required String message
}) = _AuthErrorState;
}