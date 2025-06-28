part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _SignupInitial;

  const factory SignupState.loading() = SignupLoading;
  const factory SignupState.success({required UserEntity userEntity}) = SignupSuccess;
  const factory SignupState.failure({required String message}) = SignupFailure;
}
