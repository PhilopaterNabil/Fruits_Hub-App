import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';

part 'signup_cubit.freezed.dart';
part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupState.initial());

  final AuthRepo authRepo;

  String? userName;
  String? email;
  String? password;
  bool isTermsAccepted = false;

  void updateUserName(String value) => userName = value;
  void updateEmail(String value) => email = value;
  void updatePassword(String value) => password = value;
  void toggleTerms(bool value) => isTermsAccepted = value;

  void submitForm(GlobalKey<FormState> formKey) {
    if (!isTermsAccepted) {
      emit(SignupState.failure(message: 'يجب عليك الموافقة على الشروط والأحكام'));
      return;
    }

    if (formKey.currentState?.validate() ?? false) {
      formKey.currentState?.save();
      createUserWithEmailAndPassword(
        name: userName!,
        email: email!,
        password: password!,
      );
    }
  }

  Future<void> createUserWithEmailAndPassword(
      {required String name, required String email, required String password}) async {
    emit(SignupState.loading());
    final result = await authRepo.cretateUserWithEmailAndPassword(
        name: name, email: email, password: password);

    result.fold(
      (failure) => emit(SignupState.failure(message: failure.message)),
      (userEntity) => emit(SignupState.success(userEntity: userEntity)),
    );
  }
}
