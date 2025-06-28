import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';

part 'signup_cubit.freezed.dart';
part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupState.initial());

  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(String name, String email, String password) async {
    emit(SignupState.loading());
    final result = await authRepo.cretateUserWithEmailAndPassword(
        name: name, email: email, password: password);

    result.fold(
      (failure) => emit(SignupState.failure(message: failure.message)),
      (userEntity) => emit(SignupState.success(userEntity: userEntity)),
    );
  }
}
