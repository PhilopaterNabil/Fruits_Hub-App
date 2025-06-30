part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginInitial;

  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success({required UserEntity userEntity}) = LoginSuccess;
  const factory LoginState.failure({required String message}) = LoginFailure;
}
