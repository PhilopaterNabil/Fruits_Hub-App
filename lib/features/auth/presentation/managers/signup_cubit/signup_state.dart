part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _SignupInitial;

  const factory SignupState.loading() = _SignupLoading;
  const factory SignupState.success({required UserEntity userEntity}) = _SignupSuccess;
  const factory SignupState.failure({required String message}) = _SignupFailure;
}
