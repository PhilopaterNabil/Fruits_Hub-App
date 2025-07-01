import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginState.initial());

  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(LoginState.loading());
    final result = await authRepo.signInWithEmailAndPassword(email: email, password: password);

    result.fold(
      (failure) => emit(LoginState.failure(message: failure.message)),
      (userEntity) => emit(LoginState.success(userEntity: userEntity)),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(LoginState.loading());
    final result = await authRepo.signInWithGoogle();

    result.fold(
      (failure) => emit(LoginState.failure(message: failure.message)),
      (userEntity) => emit(LoginState.success(userEntity: userEntity)),
    );
  }
}
